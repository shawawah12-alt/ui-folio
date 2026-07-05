import React, { useState, useEffect } from 'react';
import {
  StyleSheet,
  Text,
  View,
  TouchableOpacity,
} from 'react-native';

const COLORS = {
  bg: '#0F0F0F',
  textPrimary: '#F5F5F5',
  textSecondary: '#888',
  gold: '#D4AF37',
  trackBg: '#2A2A2A',
};

const TOTAL_SECONDS = 198; // 3:18

export default function App() {
  const [elapsed, setElapsed] = useState(42);
  const [isPlaying, setIsPlaying] = useState(true);

  useEffect(() => {
    if (!isPlaying) return;
    const interval = setInterval(() => {
      setElapsed((e) => (e + 1) % TOTAL_SECONDS);
    }, 1000);
    return () => clearInterval(interval);
  }, [isPlaying]);

  const formatTime = (sec: number) => {
    const m = Math.floor(sec / 60);
    const s = String(sec % 60).padStart(2, '0');
    return `${m}:${s}`;
  };

  return (
    <View style={styles.container}>
      <View style={styles.top}>
        <Text style={styles.topIcon}>‹</Text>
        <Text style={styles.topTitle}>Sedang diputar</Text>
        <Text style={styles.topIcon}>⋯</Text>
      </View>

      <View style={styles.vinyl}>
        <View style={styles.vinylInner} />
      </View>

      <View style={styles.trackInfo}>
        <Text style={styles.track}>Lofi Study</Text>
        <Text style={styles.artist}>Midnight Tape · 2024</Text>
      </View>

      <View style={styles.progressWrap}>
        <View style={styles.progressTrack}>
          <View
            style={[
              styles.progressFill,
              { width: `${(elapsed / TOTAL_SECONDS) * 100}%` },
            ]}
          />
        </View>
        <View style={styles.times}>
          <Text style={styles.time}>{formatTime(elapsed)}</Text>
          <Text style={styles.time}>3:18</Text>
        </View>
      </View>

      <View style={styles.controls}>
        <Text style={styles.ctrl}>⏮</Text>
        <TouchableOpacity
          style={styles.playBtn}
          onPress={() => setIsPlaying(!isPlaying)}
        >
          <Text style={styles.playIcon}>{isPlaying ? '⏸' : '▶'}</Text>
        </TouchableOpacity>
        <Text style={styles.ctrl}>⏭</Text>
      </View>

      <View style={styles.extra}>
        <Text style={styles.extraIcon}>🔀</Text>
        <Text style={styles.extraIcon}>🎤</Text>
        <Text style={styles.extraIcon}>🔗</Text>
        <Text style={styles.extraIcon}>⋮</Text>
      </View>
    </View>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: COLORS.bg,
    paddingTop: 56,
    paddingHorizontal: 28,
    paddingBottom: 32,
  },
  top: {
    flexDirection: 'row',
    justifyContent: 'space-between',
    alignItems: 'center',
    marginBottom: 28,
  },
  topIcon: { color: COLORS.textSecondary, fontSize: 13 },
  topTitle: { color: COLORS.textPrimary, fontSize: 13, fontWeight: '500' },
  vinyl: {
    width: 280,
    height: 280,
    borderRadius: 140,
    backgroundColor: '#000',
    borderWidth: 1,
    borderColor: COLORS.gold,
    alignSelf: 'center',
    marginBottom: 28,
    alignItems: 'center',
    justifyContent: 'center',
  },
  vinylInner: {
    width: 60,
    height: 60,
    borderRadius: 30,
    backgroundColor: COLORS.bg,
    borderWidth: 2,
    borderColor: COLORS.gold,
  },
  trackInfo: { alignItems: 'center', marginBottom: 28 },
  track: {
    fontSize: 20,
    fontWeight: '600',
    color: COLORS.textPrimary,
    letterSpacing: -0.3,
  },
  artist: { fontSize: 14, color: COLORS.textSecondary, marginTop: 4 },
  progressWrap: { marginBottom: 32 },
  progressTrack: {
    height: 3,
    backgroundColor: COLORS.trackBg,
    borderRadius: 2,
    marginBottom: 8,
  },
  progressFill: {
    height: 3,
    backgroundColor: COLORS.gold,
    borderRadius: 2,
  },
  times: {
    flexDirection: 'row',
    justifyContent: 'space-between',
  },
  time: { fontSize: 11, color: COLORS.textSecondary },
  controls: {
    flexDirection: 'row',
    alignItems: 'center',
    justifyContent: 'center',
    gap: 32,
    marginBottom: 36,
  },
  ctrl: { fontSize: 24, color: COLORS.textPrimary },
  playBtn: {
    width: 64,
    height: 64,
    borderRadius: 32,
    backgroundColor: COLORS.gold,
    alignItems: 'center',
    justifyContent: 'center',
  },
  playIcon: { fontSize: 22, color: COLORS.bg },
  extra: {
    flexDirection: 'row',
    justifyContent: 'space-between',
  },
  extraIcon: { fontSize: 16, color: '#666' },
});
