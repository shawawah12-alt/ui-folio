package com.awesome.mobileuikit.chat

import androidx.compose.foundation.background
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.items
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.Add
import androidx.compose.material.icons.filled.Send
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.tooling.preview.Preview
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import kotlinx.coroutines.delay

data class Message(
    val text: String,
    val isMe: Boolean,
    val time: String = "12:34"
)

@Composable
fun ChatScreen() {
    var messages by remember {
        mutableStateOf(
            listOf(
                Message("Hai! Apa kabar?", isMe = false),
                Message("Baik dong, lo?", isMe = true),
                Message("Aman sini. Lagi ngapain?", isMe = false),
                Message("Lagi explore repo mobile-ui-kit nih 🎨", isMe = true),
            )
        )
    }
    var input by remember { mutableStateOf("") }
    var isTyping by remember { mutableStateOf(false) }

    LaunchedEffect(messages.size) {
        if (messages.isNotEmpty() && messages.last().isMe) {
            isTyping = true
            delay(2000)
            isTyping = false
            messages = messages + Message("Wah keren! Star dulu ⭐", isMe = false)
        }
    }

    Column(
        modifier = Modifier
            .fillMaxSize()
            .background(MaterialTheme.colorScheme.background)
    ) {
        // Top bar
        Surface(color = MaterialTheme.colorScheme.primaryContainer) {
            Row(
                modifier = Modifier
                    .fillMaxWidth()
                    .padding(16.dp),
                verticalAlignment = Alignment.CenterVertically
            ) {
                Box(
                    modifier = Modifier
                        .size(40.dp)
                        .clip(RoundedCornerShape(20.dp))
                        .background(MaterialTheme.colorScheme.primary),
                    contentAlignment = Alignment.Center
                ) {
                    Text("S", color = Color.White, fontSize = 18.sp)
                }
                Spacer(Modifier.width(12.dp))
                Column {
                    Text("Shawawah", style = MaterialTheme.typography.titleMedium)
                    Text(
                        if (isTyping) "sedang mengetik..." else "Online",
                        style = MaterialTheme.typography.bodySmall,
                        color = if (isTyping) MaterialTheme.colorScheme.primary
                                else MaterialTheme.colorScheme.outline
                    )
                }
            }
        }

        // Messages list
        LazyColumn(
            modifier = Modifier.weight(1f),
            contentPadding = PaddingValues(16.dp),
            verticalArrangement = Arrangement.spacedBy(8.dp)
        ) {
            items(messages) { msg -> MessageBubble(msg) }
            if (isTyping) item { TypingBubble() }
        }

        // Input bar
        Surface(
            color = MaterialTheme.colorScheme.surfaceVariant,
            tonalElevation = 2.dp
        ) {
            Row(
                modifier = Modifier
                    .fillMaxWidth()
                    .padding(8.dp),
                verticalAlignment = Alignment.CenterVertically
            ) {
                IconButton(onClick = {}) {
                    Icon(Icons.Default.Add, contentDescription = "Attach")
                }
                OutlinedTextField(
                    value = input,
                    onValueChange = { input = it },
                    placeholder = { Text("Ketik pesan...") },
                    modifier = Modifier.weight(1f),
                    shape = RoundedCornerShape(24.dp),
                    colors = OutlinedTextFieldDefaults.colors(
                        unfocusedBorderColor = Color.Transparent,
                        focusedBorderColor = Color.Transparent,
                    )
                )
                IconButton(
                    onClick = {
                        if (input.isNotBlank()) {
                            messages = messages + Message(input, isMe = true)
                            input = ""
                        }
                    }
                ) {
                    Icon(
                        Icons.Default.Send,
                        contentDescription = "Send",
                        tint = MaterialTheme.colorScheme.primary
                    )
                }
            }
        }
    }
}

@Composable
fun MessageBubble(msg: Message) {
    val alignment = if (msg.isMe) Alignment.End else Alignment.Start
    val bubbleColor = if (msg.isMe) MaterialTheme.colorScheme.primary
                      else MaterialTheme.colorScheme.surfaceVariant
    val textColor = if (msg.isMe) MaterialTheme.colorScheme.onPrimary
                    else MaterialTheme.colorScheme.onSurfaceVariant

    Column(
        modifier = Modifier.fillMaxWidth(),
        horizontalAlignment = alignment
    ) {
        Box(
            modifier = Modifier
                .clip(
                    RoundedCornerShape(
                        topStart = 16.dp,
                        topEnd = 16.dp,
                        bottomStart = if (msg.isMe) 16.dp else 4.dp,
                        bottomEnd = if (msg.isMe) 4.dp else 16.dp
                    )
                )
                .background(bubbleColor)
                .padding(horizontal = 14.dp, vertical = 10.dp)
                .widthIn(max = 280.dp)
        ) {
            Column {
                Text(msg.text, color = textColor, fontSize = 15.sp)
                Text(
                    msg.time,
                    color = textColor.copy(alpha = 0.6f),
                    fontSize = 11.sp,
                    modifier = Modifier.align(Alignment.End)
                )
            }
        }
    }
}

@Composable
fun TypingBubble() {
    Box(
        modifier = Modifier
            .clip(RoundedCornerShape(16.dp))
            .background(MaterialTheme.colorScheme.surfaceVariant)
            .padding(horizontal = 16.dp, vertical = 12.dp)
    ) {
        Text("• • •", style = MaterialTheme.typography.bodyLarge)
    }
}

@Preview(showBackground = true)
@Composable
fun ChatScreenPreview() {
    MaterialTheme {
        ChatScreen()
    }
}
