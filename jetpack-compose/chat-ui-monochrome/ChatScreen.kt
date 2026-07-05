package com.uifolio.chat

import androidx.compose.foundation.background
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.items
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.Add
import androidx.compose.material.icons.filled.ArrowForward
import androidx.compose.material.icons.filled.MoreHoriz
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.tooling.preview.Preview
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import kotlinx.coroutines.delay

// Monochrome palette — no Material 3 purple, no gradient
private val Bg = Color(0xFFFFFFFF)
private val Surface = Color(0xFFFFFFFF)
private val Border = Color(0xFFECECEC)
private val BubbleThem = Color(0xFFF4F4F6)
private val BubbleMe = Color(0xFF1A1A1A)
private val TextPrimary = Color(0xFF1A1A1A)
private val TextSecondary = Color(0xFF8E8E93)
private val TextOnDark = Color(0xFFFFFFFF)
private val AvatarBg = Color(0xFF1A1A1A)

data class Message(
    val text: String,
    val isMe: Boolean,
    val time: String = "12.34"
)

@Composable
fun ChatScreen() {
    var messages by remember {
        mutableStateOf(
            listOf(
                Message("Hai, apa kabar?", isMe = false),
                Message("Baik. Lo?", isMe = true),
                Message("Aman. Lagi ngapain?", isMe = false),
                Message("Explore repo ui-folio", isMe = true),
            )
        )
    }
    var input by remember { mutableStateOf("") }
    var isTyping by remember { mutableStateOf(false) }

    LaunchedEffect(messages.size) {
        if (messages.isNotEmpty() && messages.last().isMe) {
            isTyping = true
            delay(2200)
            isTyping = false
            messages = messages + Message("Wah, keren. Star dulu.", isMe = false)
        }
    }

    Column(
        modifier = Modifier
            .fillMaxSize()
            .background(Bg)
    ) {
        // Topbar
        Row(
            modifier = Modifier
                .fillMaxWidth()
                .background(Surface)
                .padding(horizontal = 16.dp, vertical = 12.dp),
            verticalAlignment = Alignment.CenterVertically
        ) {
            Box(
                modifier = Modifier
                    .size(36.dp)
                    .clip(RoundedCornerShape(18.dp))
                    .background(AvatarBg),
                contentAlignment = Alignment.Center
            ) {
                Text("S", color = TextOnDark, fontSize = 15.sp, fontWeight = FontWeight.Medium)
            }
            Spacer(Modifier.width(12.dp))
            Column(modifier = Modifier.weight(1f)) {
                Text(
                    "Shawawah",
                    fontSize = 14.sp,
                    fontWeight = FontWeight.SemiBold,
                    color = TextPrimary
                )
                Text(
                    "Online",
                    fontSize = 11.sp,
                    color = TextSecondary,
                    modifier = Modifier.padding(top = 1.dp)
                )
            }
            Icon(
                Icons.Default.MoreHoriz,
                contentDescription = "More",
                tint = TextPrimary,
                modifier = Modifier.size(18.dp)
            )
        }
        Box(
            modifier = Modifier
                .fillMaxWidth()
                .height(1.dp)
                .background(Border)
        )

        // Messages
        LazyColumn(
            modifier = Modifier.weight(1f),
            contentPadding = PaddingValues(horizontal = 16.dp, vertical = 16.dp),
            verticalArrangement = Arrangement.spacedBy(6.dp)
        ) {
            item {
                Text(
                    "Hari ini",
                    fontSize = 11.sp,
                    color = TextSecondary,
                    modifier = Modifier
                        .fillMaxWidth()
                        .padding(bottom = 8.dp),
                    textAlign = androidx.compose.ui.text.style.TextAlign.Center
                )
            }
            items(messages) { msg -> MessageBubble(msg) }
            if (isTyping) item { TypingBubble() }
        }

        // Input bar
        Box(
            modifier = Modifier
                .fillMaxWidth()
                .height(1.dp)
                .background(Border)
        )
        Row(
            modifier = Modifier
                .fillMaxWidth()
                .background(Surface)
                .padding(horizontal = 12.dp, vertical = 8.dp),
            verticalAlignment = Alignment.CenterVertically
        ) {
            Icon(
                Icons.Default.Add,
                contentDescription = "Attach",
                tint = TextPrimary,
                modifier = Modifier
                    .size(22.dp)
                    .padding(end = 4.dp)
            )
            Spacer(Modifier.width(4.dp))
            Box(
                modifier = Modifier
                    .weight(1f)
                    .clip(RoundedCornerShape(20.dp))
                    .background(BubbleThem)
                    .padding(horizontal = 14.dp, vertical = 9.dp)
            ) {
                Text("Pesan…", fontSize = 14.sp, color = TextSecondary)
            }
            Spacer(Modifier.width(8.dp))
            Icon(
                Icons.Default.ArrowForward,
                contentDescription = "Send",
                tint = TextPrimary,
                modifier = Modifier
                    .size(18.dp)
                    .clickable {
                        if (input.isNotBlank()) {
                            messages = messages + Message(input, isMe = true)
                            input = ""
                        }
                    }
            )
        }
    }
}

@Composable
fun MessageBubble(msg: Message) {
    val alignment = if (msg.isMe) Alignment.End else Alignment.Start
    val bubbleColor = if (msg.isMe) BubbleMe else BubbleThem
    val textColor = if (msg.isMe) TextOnDark else TextPrimary

    Column(
        modifier = Modifier.fillMaxWidth(),
        horizontalAlignment = alignment
    ) {
        Box(
            modifier = Modifier
                .widthIn(max = 240.dp)
                .clip(
                    RoundedCornerShape(
                        topStart = 16.dp,
                        topEnd = 16.dp,
                        bottomStart = if (msg.isMe) 16.dp else 4.dp,
                        bottomEnd = if (msg.isMe) 4.dp else 16.dp
                    )
                )
                .background(bubbleColor)
                .padding(horizontal = 12.dp, vertical = 8.dp)
        ) {
            Column {
                Text(msg.text, color = textColor, fontSize = 14.sp, lineHeight = 20.sp)
                Text(
                    msg.time,
                    color = textColor.copy(alpha = 0.55f),
                    fontSize = 10.sp,
                    modifier = Modifier
                        .align(Alignment.End)
                        .padding(top = 2.dp)
                )
            }
        }
    }
}

@Composable
fun TypingBubble() {
    Box(
        modifier = Modifier
            .clip(RoundedCornerShape(16.dp, 16.dp, 4.dp, 16.dp))
            .background(BubbleThem)
            .padding(horizontal = 14.dp, vertical = 10.dp)
    ) {
        Text("•••", color = TextPrimary, fontSize = 14.sp, letterSpacing = 3.sp)
    }
}

@Preview(showBackground = true)
@Composable
fun ChatScreenPreview() {
    ChatScreen()
}

// clickable import shortcut
private fun Modifier.clickable(onClick: () -> Unit): Modifier =
    this.then(androidx.compose.foundation.clickable(onClick = onClick))
