package com.uifolio.maps

import androidx.compose.foundation.background
import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.shape.CircleShape
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.RectangleShape
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.tooling.preview.Preview
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import androidx.compose.ui.zIndex

private val PaperBg = Color(0xFFE8DFC8)
private val RoadColor = Color(0xFFFBF7F0)
private val RoadBorder = Color(0xFFD4C8A8)
private val ParkColor = Color(0xFFC7D1B5)
private val WaterColor = Color(0xFFB5C7D1)
private val BuildingColor = Color(0xFFD4C8A8)
private val TextPrimary = Color(0xFF2D2A1F)
private val TextSecondary = Color(0xFF6B5436)
private val Accent = Color(0xFFC66B3D)
private val White = Color(0xFFFFFFFF)

@Composable
fun MapsScreen() {
    Box(modifier = Modifier.fillMaxSize().background(PaperBg)) {
        // Roads - horizontal
        Road(Modifier.fillMaxWidth().height(30.dp).offset(y = 200.dp))
        Road(Modifier.fillMaxWidth().height(22.dp).offset(y = 400.dp))
        // Roads - vertical
        Road(Modifier.fillMaxHeight().width(24.dp).offset(x = 120.dp))
        Road(Modifier.fillMaxHeight().width(20.dp).offset(x = 260.dp))

        // Park
        Box(
            modifier = Modifier
                .offset(x = 20.dp, y = 80.dp)
                .size(width = 80.dp, height = 100.dp)
                .clip(RoundedCornerShape(4.dp))
                .background(ParkColor.copy(alpha = 0.7f))
        )
        Box(
            modifier = Modifier
                .offset(x = 290.dp, y = 440.dp)
                .size(width = 70.dp, height = 80.dp)
                .clip(RoundedCornerShape(4.dp))
                .background(ParkColor.copy(alpha = 0.7f))
        )

        // Water
        Box(
            modifier = Modifier
                .offset(x = 60.dp, y = 530.dp)
                .size(width = 160.dp, height = 50.dp)
                .clip(RoundedCornerShape(30.dp))
                .background(WaterColor.copy(alpha = 0.6f))
        )

        // Buildings
        listOf(
            Triple(160, 160, 30),
            Triple(200, 160, 40),
            Triple(160, 240, 30),
            Triple(200, 240, 40),
            Triple(300, 300, 50),
            Triple(160, 430, 30),
        ).forEach { (x, y, size) ->
            Box(
                modifier = Modifier
                    .offset(x = x.dp, y = y.dp)
                    .size(size.dp)
                    .clip(RoundedCornerShape(2.dp))
                    .background(BuildingColor.copy(alpha = 0.7f))
            )
        }

        // Top search bar
        Row(
            modifier = Modifier
                .fillMaxWidth()
                .padding(top = 48.dp, start = 16.dp, end = 16.dp)
                .zIndex(10f),
            horizontalArrangement = Arrangement.spacedBy(8.dp)
        ) {
            Box(
                modifier = Modifier
                    .size(40.dp)
                    .clip(CircleShape)
                    .background(White),
                contentAlignment = Alignment.Center
            ) {
                Text("‹", fontSize = 18.sp, color = TextPrimary)
            }
            Row(
                modifier = Modifier
                    .weight(1f)
                    .clip(RoundedCornerShape(20.dp))
                    .background(White)
                    .padding(horizontal = 16.dp, vertical = 10.dp),
                verticalAlignment = Alignment.CenterVertically,
                horizontalArrangement = Arrangement.spacedBy(8.dp)
            ) {
                Text("🔍", fontSize = 13.sp)
                Text("Cari tempat", color = TextSecondary, fontSize = 13.sp)
            }
        }

        // Layers button
        Box(
            modifier = Modifier
                .offset(x = 324.dp, y = 100.dp)
                .size(40.dp)
                .clip(CircleShape)
                .background(White)
                .zIndex(10f),
            contentAlignment = Alignment.Center
        ) {
            Text("≡", color = TextSecondary, fontSize = 16.sp)
        }

        // Pin pulse
        Box(
            modifier = Modifier
                .align(Alignment.Center)
                .size(20.dp)
                .clip(CircleShape)
                .background(Accent.copy(alpha = 0.3f))
                .offset(y = (-8).dp)
        )

        // Pin
        Box(
            modifier = Modifier
                .align(Alignment.Center)
                .offset(y = (-50).dp)
                .size(32.dp)
                .clip(RoundedCornerShape(bottomStart = 0.dp, bottomEnd = 16.dp, topStart = 16.dp, topEnd = 16.dp))
                .background(Accent)
                .zIndex(5f),
            contentAlignment = Alignment.Center
        ) {
            Box(
                modifier = Modifier
                    .size(14.dp)
                    .clip(CircleShape)
                    .background(White)
            )
        }

        // Bottom card
        Column(
            modifier = Modifier
                .align(Alignment.BottomCenter)
                .padding(16.dp)
                .fillMaxWidth()
                .clip(RoundedCornerShape(16.dp))
                .background(White)
                .padding(16.dp)
                .zIndex(10f)
        ) {
            Text(
                "KEDAI KOPI",
                fontSize = 10.sp,
                color = Accent,
                fontWeight = FontWeight.Bold,
                letterSpacing = 0.5.sp
            )
            Spacer(Modifier.height(4.dp))
            Text(
                "Kopi Senja",
                fontSize = 18.sp,
                fontWeight = FontWeight.Bold,
                color = TextPrimary
            )
            Text(
                "Jl. Drupadi No. 24, Seminyak",
                fontSize = 12.sp,
                color = TextSecondary,
                modifier = Modifier.padding(top = 4.dp)
            )
            Spacer(Modifier.height(12.dp))
            Box(
                modifier = Modifier
                    .fillMaxWidth()
                    .height(1.dp)
                    .background(Color(0xFFF0E8D5))
            )
            Spacer(Modifier.height(12.dp))
            Row(
                modifier = Modifier.fillMaxWidth(),
                horizontalArrangement = Arrangement.spacedBy(14.dp)
            ) {
                MetaItem("★", "4.8")
                MetaItem("⏱", "Buka · Tutup 22.00")
                MetaItem("↗", "0.8 km")
            }
            Spacer(Modifier.height(12.dp))
            Box(
                modifier = Modifier
                    .fillMaxWidth()
                    .clip(RoundedCornerShape(10.dp))
                    .background(Accent)
                    .padding(vertical = 12.dp),
                contentAlignment = Alignment.Center
            ) {
                Text("Rute", color = White, fontWeight = FontWeight.SemiBold, fontSize = 14.sp)
            }
        }
    }
}

@Composable
fun Road(modifier: Modifier) {
    Box(
        modifier = modifier
            .clip(RectangleShape)
            .background(RoadColor)
    )
}

@Composable
fun MetaItem(icon: String, value: String) {
    Row(verticalAlignment = Alignment.CenterVertically, horizontalArrangement = Arrangement.spacedBy(4.dp)) {
        Text(icon, color = Accent, fontSize = 12.sp)
        Text(value, color = TextPrimary, fontSize = 12.sp)
    }
}

@Preview(showBackground = true)
@Composable
fun MapsScreenPreview() {
    MapsScreen()
}
