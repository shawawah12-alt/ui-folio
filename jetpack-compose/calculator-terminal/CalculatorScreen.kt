package com.uifolio.calculator

import androidx.compose.foundation.background
import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.tooling.preview.Preview
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp

private val Bg = Color(0xFF0A0A0A)
private val BtnBg = Color(0xFF141414)
private val BtnBorder = Color(0xFF1F1F1F)
private val OpBg = Color(0xFF1A1A1A)
private val FnBg = Color(0xFF0F0F0F)
private val TextLight = Color(0xFFE8E8E8)
private val TextMuted = Color(0xFF888888)
private val TextDim = Color(0xFF666666)
private val Accent = Color(0xFF00FF88)
private val EqBg = Color(0xFF00FF88)
private val EqFg = Color(0xFF0A0A0A)

@Composable
fun CalculatorScreen() {
    var display by remember { mutableStateOf("1605") }
    var history by remember { mutableStateOf("1,247 + 358") }

    Column(
        modifier = Modifier
            .fillMaxSize()
            .background(Bg)
            .padding(top = 56.dp, start = 20.dp, end = 20.dp, bottom = 24.dp)
    ) {
        // History
        Text(
            history,
            color = TextDim,
            fontSize = 14.sp,
            textAlign = TextAlign.End,
            modifier = Modifier.fillMaxWidth()
        )
        Spacer(Modifier.height(8.dp))

        // Display
        Text(
            display,
            color = Accent,
            fontSize = 64.sp,
            fontWeight = FontWeight.Light,
            textAlign = TextAlign.End,
            modifier = Modifier.fillMaxWidth()
        )
        Spacer(Modifier.height(24.dp))

        // Grid
        Column(
            modifier = Modifier.weight(1f),
            verticalArrangement = Arrangement.spacedBy(8.dp)
        ) {
            Row(horizontalArrangement = Arrangement.spacedBy(8.dp), modifier = Modifier.weight(1f)) {
                CalcBtn("AC", FnBg, TextMuted, 16.sp, Modifier.weight(1f)) { display = "0"; history = "" }
                CalcBtn("±", FnBg, TextMuted, 16.sp, Modifier.weight(1f)) {}
                CalcBtn("%", FnBg, TextMuted, 16.sp, Modifier.weight(1f)) {}
                CalcBtn("÷", OpBg, Accent, 22.sp, Modifier.weight(1f)) {}
            }
            Row(horizontalArrangement = Arrangement.spacedBy(8.dp), modifier = Modifier.weight(1f)) {
                CalcBtn("7", BtnBg, TextLight, 22.sp, Modifier.weight(1f)) { display += "7" }
                CalcBtn("8", BtnBg, TextLight, 22.sp, Modifier.weight(1f)) { display += "8" }
                CalcBtn("9", BtnBg, TextLight, 22.sp, Modifier.weight(1f)) { display += "9" }
                CalcBtn("×", OpBg, Accent, 22.sp, Modifier.weight(1f)) {}
            }
            Row(horizontalArrangement = Arrangement.spacedBy(8.dp), modifier = Modifier.weight(1f)) {
                CalcBtn("4", BtnBg, TextLight, 22.sp, Modifier.weight(1f)) { display += "4" }
                CalcBtn("5", BtnBg, TextLight, 22.sp, Modifier.weight(1f)) { display += "5" }
                CalcBtn("6", BtnBg, TextLight, 22.sp, Modifier.weight(1f)) { display += "6" }
                CalcBtn("−", OpBg, Accent, 22.sp, Modifier.weight(1f)) {}
            }
            Row(horizontalArrangement = Arrangement.spacedBy(8.dp), modifier = Modifier.weight(1f)) {
                CalcBtn("1", BtnBg, TextLight, 22.sp, Modifier.weight(1f)) { display += "1" }
                CalcBtn("2", BtnBg, TextLight, 22.sp, Modifier.weight(1f)) { display += "2" }
                CalcBtn("3", BtnBg, TextLight, 22.sp, Modifier.weight(1f)) { display += "3" }
                CalcBtn("+", OpBg, Accent, 22.sp, Modifier.weight(1f)) {}
            }
            Row(horizontalArrangement = Arrangement.spacedBy(8.dp), modifier = Modifier.weight(1f)) {
                CalcBtn("0", BtnBg, TextLight, 22.sp, Modifier.weight(2f)) { display += "0" }
                CalcBtn(".", BtnBg, TextLight, 22.sp, Modifier.weight(1f)) { display += "." }
                CalcBtn("=", EqBg, EqFg, 22.sp, Modifier.weight(1f)) {}
            }
        }
    }
}

@Composable
fun CalcBtn(
    text: String,
    bgColor: Color,
    textColor: Color,
    fontSize: androidx.compose.ui.unit.TextUnit,
    modifier: Modifier = Modifier,
    onClick: () -> Unit
) {
    Box(
        modifier = modifier
            .fillMaxHeight()
            .clip(RoundedCornerShape(14.dp))
            .background(bgColor)
            .clickable { onClick() },
        contentAlignment = Alignment.Center
    ) {
        Text(
            text,
            color = textColor,
            fontSize = fontSize,
            fontWeight = if (text == "=") FontWeight.Bold else FontWeight.Medium
        )
    }
}

@Preview(showBackground = true)
@Composable
fun CalculatorScreenPreview() {
    CalculatorScreen()
}
