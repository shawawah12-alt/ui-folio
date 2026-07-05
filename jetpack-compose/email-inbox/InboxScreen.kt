package com.uifolio.email

import androidx.compose.foundation.background
import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.items
import androidx.compose.foundation.shape.CircleShape
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.Add
import androidx.compose.material.icons.filled.Create
import androidx.compose.material.icons.filled.Menu
import androidx.compose.material.icons.filled.Search
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.tooling.preview.Preview
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp

private val Bg = Color(0xFFF5F0E6)
private val Card = Color(0xFFFFFFFF)
private val Border = Color(0xFFEDE3D0)
private val TextPrimary = Color(0xFF3D2F1F)
private val TextSecondary = Color(0xFF6B5436)
private val TextMuted = Color(0xFF8B7355)
private val Accent = Color(0xFF6B5436)
private val ActiveFolder = Color(0xFF6B5436)
private val UnreadDot = Color(0xFFD4A437)
private val AvatarBg1 = Color(0xFF6B5436)
private val AvatarBg2 = Color(0xFF8B6F47)
private val AvatarBg3 = Color(0xFFA0826D)

data class Email(
    val initial: String,
    val avatarBg: Color,
    val name: String,
    val subject: String,
    val preview: String,
    val time: String,
    val unread: Boolean,
)

@Composable
fun InboxScreen() {
    val folders = listOf("Semua", "Belum dibaca", "Penting", "Arsip")
    var activeFolder by remember { mutableStateOf(0) }

    val emails = remember {
        listOf(
            Email("S", AvatarBg1, "Sari Wulandari", "Review desain v2 — siap dipresentasikan",
                "Halo, sudah saya kirim file terbaru. Mohon ditinjau sebelum meeting...", "09.42", true),
            Email("F", AvatarBg2, "Figma", "3 komentar baru di dokumen kamu",
                "Andi, Maya, dan 1 lainnya mengomentari file ui-folio...", "08.15", true),
            Email("B", AvatarBg3, "Bank Mandiri", "Tagihan kartu kredit Juli 2026",
                "Total tagihan Rp 1.245.000 jatuh tempo 25 Juli 2026...", "Kemarin", false),
            Email("A", AvatarBg1, "Andi Pratama", "Re: Ngopi akhir pekan?",
                "Boleh, Sabtu pagi di kopi senja dekat rumah? Katanya...", "Kemarin", false),
        )
    }

    Column(
        modifier = Modifier
            .fillMaxSize()
            .background(Bg)
    ) {
        // Top bar
        Row(
            modifier = Modifier
                .fillMaxWidth()
                .padding(horizontal = 16.dp, vertical = 16.dp),
            verticalAlignment = Alignment.CenterVertically
        ) {
            Icon(Icons.Default.Menu, contentDescription = "Menu",
                tint = TextSecondary, modifier = Modifier.size(20.dp))
            Spacer(Modifier.width(16.dp))
            Text(
                "Kotak masuk",
                fontSize = 18.sp,
                fontWeight = FontWeight.SemiBold,
                color = TextPrimary,
                modifier = Modifier.weight(1f)
            )
            Icon(Icons.Default.Search, contentDescription = "Search",
                tint = TextSecondary, modifier = Modifier.size(18.dp))
        }

        // Folder chips
        Row(
            modifier = Modifier
                .fillMaxWidth()
                .padding(horizontal = 16.dp),
            horizontalArrangement = Arrangement.spacedBy(6.dp)
        ) {
            folders.forEachIndexed { i, f ->
                val isActive = i == activeFolder
                Text(
                    text = f,
                    fontSize = 12.sp,
                    fontWeight = FontWeight.Medium,
                    color = if (isActive) Color.White else TextSecondary,
                    modifier = Modifier
                        .clip(RoundedCornerShape(16.dp))
                        .background(if (isActive) ActiveFolder else Border)
                        .clickable { activeFolder = i }
                        .padding(horizontal = 14.dp, vertical = 6.dp)
                )
            }
        }

        Spacer(Modifier.height(14.dp))

        // Email list
        LazyColumn(modifier = Modifier.fillMaxSize()) {
            items(emails) { e -> EmailRow(e) }
        }
    }

    // FAB
    Box(modifier = Modifier.fillMaxSize().padding(20.dp), contentAlignment = Alignment.BottomEnd) {
        Row(
            modifier = Modifier
                .clip(RoundedCornerShape(24.dp))
                .background(Accent)
                .padding(horizontal = 18.dp, vertical = 14.dp),
            verticalAlignment = Alignment.CenterVertically,
            horizontalArrangement = Arrangement.spacedBy(6.dp)
        ) {
            Icon(Icons.Default.Create, contentDescription = "Write",
                tint = Color.White, modifier = Modifier.size(14.dp))
            Text("Tulis", color = Color.White, fontSize = 13.sp, fontWeight = FontWeight.SemiBold)
        }
    }
}

@Composable
fun EmailRow(e: Email) {
    Row(
        modifier = Modifier
            .fillMaxWidth()
            .padding(horizontal = 16.dp, vertical = 14.dp),
        verticalAlignment = Alignment.CenterVertically
    ) {
        Box(
            modifier = Modifier
                .size(40.dp)
                .clip(CircleShape)
                .background(e.avatarBg),
            contentAlignment = Alignment.Center
        ) {
            Text(e.initial, color = Color.White, fontSize = 14.sp, fontWeight = FontWeight.SemiBold)
        }
        Spacer(Modifier.width(12.dp))
        Column(modifier = Modifier.weight(1f)) {
            Row(
                modifier = Modifier.fillMaxWidth(),
                horizontalArrangement = Arrangement.SpaceBetween
            ) {
                Text(e.name, fontSize = 14.sp,
                    fontWeight = if (e.unread) FontWeight.SemiBold else FontWeight.Medium,
                    color = TextPrimary)
                Text(e.time, fontSize = 11.sp, color = TextMuted)
            }
            Spacer(Modifier.height(2.dp))
            Text(
                e.subject,
                fontSize = 13.sp,
                fontWeight = if (e.unread) FontWeight.Bold else FontWeight.Medium,
                color = TextPrimary,
                maxLines = 1,
                overflow = TextOverflow.Ellipsis
            )
            Spacer(Modifier.height(2.dp))
            Text(
                e.preview,
                fontSize = 12.sp,
                color = TextMuted,
                maxLines = 1,
                overflow = TextOverflow.Ellipsis
            )
        }
        if (e.unread) {
            Spacer(Modifier.width(8.dp))
            Box(
                modifier = Modifier
                    .size(8.dp)
                    .clip(CircleShape)
                    .background(UnreadDot)
            )
        }
    }
    Box(
        modifier = Modifier
            .fillMaxWidth()
            .padding(start = 68.dp)
            .height(1.dp)
            .background(Color(0xFFE5DBC8))
    )
}

@Preview(showBackground = true)
@Composable
fun InboxScreenPreview() {
    InboxScreen()
}
