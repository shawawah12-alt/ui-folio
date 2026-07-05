import React, { useState, useEffect } from 'react';
import {
  StyleSheet,
  Text,
  View,
  ScrollView,
} from 'react-native';
import { Svg, Circle } from 'react-native-svg';

const COLORS = {
  bg: '#0A1410',
  card: '#142219',
  border: '#1F3327',
  textPrimary: '#E8F0EC',
  textSecondary: '#6B8074',
  green: '#4ADE80',
  cyan: '#60D8E8',
  yellow: '#FBBF24',
  pink: '#F472B6',
};

const STATS = [
  { icon: '♡', label: 'Denyut', num: '72', unit: 'bpm', trend: '↑ Normal', color: COLORS.green },
  { icon: '⚡', label: 'Kalori', num: '420', unit: 'kcal', trend: '↑ 8% dari kemarin', color: COLORS.cyan },
  { icon: '⏱', label: 'Aktif', num: '42', unit: 'menit', trend: '↑ Target 30 menit', color: COLORS.yellow },
  { icon: '💤', label: 'Tidur', num: '7.2', unit: 'jam', trend: '↑ Berkualitas', color: COLORS.pink },
];

const BARS = [
  { h: 40, today: false },
  { h: 60, today: false },
  { h: 55, today: false },
  { h: 80, today: false },
  { h: 35, today: false },
  { h: 70, today: false },
  { h: 65, today: true },
];

const TARGET_STEPS = 10000;
const CURRENT_STEPS = 7234;

export default function App() {
  const [steps, setSteps] = useState(0);
  const [ringProgress, setRingProgress] = useState(0);

  // Animate step counter and ring on mount
  useEffect(() => {
    const duration = 1500;
    const start = Date.now();
    const interval = setInterval(() => {
      const elapsed = Date.now() - start;
      const t = Math.min(elapsed / duration, 1);
      setSteps(Math.floor(CURRENT_STEPS * t));
      setRingProgress(t * (CURRENT_STEPS / TARGET_STEPS));
      if (t >= 1) clearInterval(interval);
    }, 16);
    return () => clearInterval(interval);
  }, []);

  const circumference = 2 * Math.PI * 85;
  const dashOffset = circumference * (1 - ringProgress);

  return (
    <ScrollView style={styles.container} showsVerticalScrollIndicator={false}>
      <View style={styles.head}>
        <View>
          <Text style={styles.date}>Senin, 5 Juli</Text>
          <Text style={styles.day}>Hari ini</Text>
        </View>
        <View style={styles.avatar}>
          <Text style={styles.avatarText}>S</Text>
        </View>
      </View>

      <View style={styles.ringWrap}>
        <Svg width="200" height="200" viewBox="0 0 200 200">
          <Circle
            cx="100"
            cy="100"
            r="85"
            stroke={COLORS.border}
            strokeWidth="14"
            fill="none"
          />
          <Circle
            cx="100"
            cy="100"
            r="85"
            stroke={COLORS.green}
            strokeWidth="14"
            fill="none"
            strokeLinecap="round"
            strokeDasharray={circumference}
            strokeDashoffset={dashOffset}
            transform="rotate(-90, 100, 100)"
          />
        </Svg>
        <View style={styles.ringCenter}>
          <Text style={styles.ringNum}>{steps.toLocaleString('id-ID')}</Text>
          <Text style={styles.ringLbl}>LANGKAH</Text>
          <Text style={styles.ringSub}>dari {TARGET_STEPS.toLocaleString('id-ID')}</Text>
        </View>
      </View>

      <View style={styles.statsGrid}>
        {STATS.map((s) => (
          <View key={s.label} style={styles.statCard}>
            <View style={[styles.statIcon, { backgroundColor: COLORS.border }]}>
              <Text style={[styles.statIconText, { color: s.color }]}>{s.icon}</Text>
            </View>
            <Text style={styles.statLbl}>{s.label.toUpperCase()}</Text>
            <View style={styles.statRow}>
              <Text style={styles.statNum}>{s.num}</Text>
              <Text style={styles.statUnit}>{s.unit}</Text>
            </View>
            <Text style={styles.statTrend}>{s.trend}</Text>
          </View>
        ))}
      </View>

      <View style={styles.activityCard}>
        <View style={styles.activityHead}>
          <Text style={styles.activityTitle}>Aktivitas mingguan</Text>
          <Text style={styles.activityLink}>Detail ›</Text>
        </View>
        <View style={styles.bars}>
          {BARS.map((b, i) => (
            <View
              key={i}
              style={[
                styles.bar,
                { height: `${b.h}%` },
                b.today && styles.barToday,
              ]}
            />
          ))}
        </View>
      </View>
    </ScrollView>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: COLORS.bg,
    paddingTop: 56,
    paddingHorizontal: 24,
  },
  head: {
    flexDirection: 'row',
    justifyContent: 'space-between',
    alignItems: 'center',
    marginBottom: 28,
  },
  date: { color: COLORS.textSecondary, fontSize: 12 },
  day: { fontSize: 22, fontWeight: '700', color: COLORS.textPrimary, letterSpacing: -0.4, marginTop: 2 },
  avatar: {
    width: 38,
    height: 38,
    borderRadius: 19,
    backgroundColor: '#2A8060',
    alignItems: 'center',
    justifyContent: 'center',
  },
  avatarText: { color: COLORS.bg, fontWeight: '700', fontSize: 14 },
  ringWrap: {
    alignItems: 'center',
    marginBottom: 32,
    position: 'relative',
  },
  ringCenter: {
    position: 'absolute',
    top: 0,
    left: 0,
    right: 0,
    bottom: 0,
    alignItems: 'center',
    justifyContent: 'center',
  },
  ringNum: { fontSize: 38, fontWeight: '700', color: COLORS.textPrimary, letterSpacing: -1 },
  ringLbl: { fontSize: 11, color: COLORS.textSecondary, letterSpacing: 0.5, marginTop: 2 },
  ringSub: { fontSize: 11, color: COLORS.textSecondary, marginTop: 4 },
  statsGrid: {
    flexDirection: 'row',
    flexWrap: 'wrap',
    gap: 10,
    marginBottom: 20,
  },
  statCard: {
    width: '48%',
    flexGrow: 1,
    backgroundColor: COLORS.card,
    borderWidth: 1,
    borderColor: COLORS.border,
    borderRadius: 12,
    padding: 14,
  },
  statIcon: {
    width: 24,
    height: 24,
    borderRadius: 6,
    alignItems: 'center',
    justifyContent: 'center',
    marginBottom: 8,
  },
  statIconText: { fontSize: 12 },
  statLbl: { color: COLORS.textSecondary, fontSize: 11, letterSpacing: 0.3 },
  statRow: { flexDirection: 'row', alignItems: 'baseline', gap: 4, marginTop: 6 },
  statNum: { fontSize: 22, fontWeight: '700', color: COLORS.textPrimary },
  statUnit: { fontSize: 12, color: COLORS.textSecondary },
  statTrend: { fontSize: 11, color: COLORS.green, marginTop: 4 },
  activityCard: {
    backgroundColor: COLORS.card,
    borderWidth: 1,
    borderColor: COLORS.border,
    borderRadius: 12,
    padding: 14,
    marginBottom: 32,
  },
  activityHead: {
    flexDirection: 'row',
    justifyContent: 'space-between',
    alignItems: 'center',
    marginBottom: 12,
  },
  activityTitle: { fontSize: 13, fontWeight: '600', color: COLORS.textPrimary },
  activityLink: { color: COLORS.green, fontSize: 11 },
  bars: {
    flexDirection: 'row',
    alignItems: 'flex-end',
    gap: 6,
    height: 60,
  },
  bar: {
    flex: 1,
    backgroundColor: COLORS.border,
    borderRadius: 3,
  },
  barToday: { backgroundColor: COLORS.green },
});
