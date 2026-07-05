package com.uifolio.todo

import androidx.compose.animation.AnimatedVisibility
import androidx.compose.animation.fadeIn
import androidx.compose.animation.fadeOut
import androidx.compose.foundation.background
import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.items
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.Add
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.draw.rotate
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextDecoration
import androidx.compose.ui.tooling.preview.Preview
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp

private val Bg = Color(0xFFFAF6E8)
private val CardYellow = Color(0xFFFFF7C2)
private val CardAmber = Color(0xFFFFE9A8)
private val Border = Color(0xFFE8DCC0)
private val TextPrimary = Color(0xFF2D2A1F)
private val TextSecondary = Color(0xFF8B7355)
private val DoneGreen = Color(0xFF6B8E23)
private val PinRed = Color(0xFFC8102E)

data class Task(
    val text: String,
    val meta: String,
    val done: Boolean,
)

@Composable
fun TodoScreen() {
    var tasks by remember {
        mutableStateOf(
            listOf(
                Task("Kirim proposal klien pagi", "Selesai · 08.42", true),
                Task("Belanja sayur untuk minggu ini", "Selesai · 10.15", true),
                Task("Review PR ui-folio", "Belum · sore", false),
                Task("Tulis jurnal harian", "Belum · malam", false),
                Task("Baca 20 halaman buku", "Belum · sebelum tidur", false),
            )
        )
    }

    val doneCount = tasks.count { it.done }
    val total = tasks.size

    Column(
        modifier = Modifier
            .fillMaxSize()
            .background(Bg)
            .padding(top = 48.dp)
    ) {
        // Header
        Column(modifier = Modifier.padding(horizontal = 24.dp)) {
            Text(
                "SENIN · 5 JULI",
                fontSize = 11.sp,
                color = TextSecondary,
                letterSpacing = 0.5.sp
            )
            Text(
                "Hari ini",
                fontSize = 32.sp,
                fontWeight = FontWeight.Bold,
                color = TextPrimary,
                modifier = Modifier.padding(top = 4.dp)
            )
            Row(
                modifier = Modifier.padding(top = 6.dp),
                verticalAlignment = Alignment.CenterVertically,
                horizontalArrangement = Arrangement.spacedBy(6.dp)
            ) {
                Text("$doneCount dari $total", color = DoneGreen, fontWeight = FontWeight.SemiBold, fontSize = 12.sp)
                Text("selesai", color = TextSecondary, fontSize = 12.sp)
            }
        }

        Spacer(Modifier.height(20.dp))

        // Add bar
        Row(
            modifier = Modifier
                .padding(horizontal = 24.dp)
                .clip(RoundedCornerShape(12.dp))
                .background(Color(0xFFFFFDF3))
                .padding(12.dp),
            verticalAlignment = Alignment.CenterVertically,
            horizontalArrangement = Arrangement.spacedBy(10.dp)
        ) {
            Box(
                modifier = Modifier
                    .size(20.dp)
                    .clip(RoundedCornerShape(10.dp))
                    .background(Color(0xFFF5EFE0)),
                contentAlignment = Alignment.Center
            ) {
                Icon(Icons.Default.Add, contentDescription = "Add", tint = TextSecondary, modifier = Modifier.size(12.dp))
            }
            Text("Tambah tugas…", color = Color(0xFFB5A28A), fontSize = 13.sp)
        }

        Spacer(Modifier.height(16.dp))

        // Tasks
        LazyColumn(
            modifier = Modifier.fillMaxSize(),
            contentPadding = PaddingValues(horizontal = 24.dp, vertical = 4.dp),
            verticalArrangement = Arrangement.spacedBy(10.dp)
        ) {
            itemsIndexed(tasks) { i, t ->
                TaskCard(
                    task = t,
                    rotation = when (i % 5) {
                        0 -> -0.6f
                        1 -> 0.5f
                        2 -> -0.3f
                        3 -> 0.7f
                        else -> -0.4f
                    },
                    cardColor = if (i % 2 == 0) CardYellow else CardAmber,
                    onToggle = {
                        tasks = tasks.toMutableList().also { list ->
                            list[i] = list[i].copy(done = !list[i].done)
                        }
                    }
                )
            }
        }
    }
}

@Composable
fun TaskCard(
    task: Task,
    rotation: Float,
    cardColor: Color,
    onToggle: () -> Unit
) {
    Box(
        modifier = Modifier
            .fillMaxWidth()
            .rotate(rotation)
            .clip(RoundedCornerShape(8.dp))
            .background(cardColor)
            .padding(14.dp)
    ) {
        // Pin
        Box(
            modifier = Modifier
                .align(Alignment.TopCenter)
                .offset(y = (-4).dp)
                .size(8.dp)
                .clip(RoundedCornerShape(4.dp))
                .background(PinRed)
        )

        Row(
            verticalAlignment = Alignment.Top,
            horizontalArrangement = Arrangement.spacedBy(12.dp)
        ) {
            Box(
                modifier = Modifier
                    .size(22.dp)
                    .clip(RoundedCornerShape(6.dp))
                    .background(if (task.done) DoneGreen else Color.Transparent)
                    .clickable { onToggle() },
                contentAlignment = Alignment.Center
            ) {
                if (task.done) {
                    Text("✓", color = Color.White, fontWeight = FontWeight.Bold, fontSize = 12.sp)
                } else {
                    Box(
                        modifier = Modifier
                            .size(22.dp)
                            .clip(RoundedCornerShape(6.dp))
                            .background(Color.Transparent)
                            .padding(2.dp)
                    )
                }
            }

            Column(modifier = Modifier.weight(1f)) {
                Text(
                    task.text,
                    fontSize = 18.sp,
                    color = if (task.done) TextSecondary else TextPrimary,
                    textDecoration = if (task.done) TextDecoration.LineThrough else TextDecoration.None
                )
                Text(
                    task.meta,
                    fontSize = 10.sp,
                    color = TextSecondary,
                    modifier = Modifier.padding(top = 4.dp)
                )
            }
        }
    }
}

// Helper for indexed items in LazyColumn
@Composable
fun <T> androidx.compose.foundation.lazy.LazyListScope.itemsIndexed(
    items: List<T>,
    itemContent: @Composable (Int, T) -> Unit
) {
    items(items.size) { i ->
        itemContent(i, items[i])
    }
}

@Preview(showBackground = true)
@Composable
fun TodoScreenPreview() {
    TodoScreen()
}
