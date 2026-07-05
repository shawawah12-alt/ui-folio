import React, { useState, useEffect } from 'react';
import {
  StyleSheet,
  Text,
  View,
  ScrollView,
  TouchableOpacity,
} from 'react-native';

const COLORS = {
  bg: '#FFF8F0',
  card: '#FFFFFF',
  border: '#F0E2D0',
  textPrimary: '#2D1F14',
  textSecondary: '#8B6F47',
  textMuted: '#B5A28A',
  accent: '#C66B3D',
};

const CATS = ['Semua', 'Makanan', 'Minuman', 'Dessert', 'Sehat'];

const RESTOS = [
  { img: '🍜', name: 'Bakso Pak Bro', meta: 'Indonesia · 0.8 km', rating: '4.9', time: '15 menit' },
  { img: '🍣', name: 'Sushi Hana', meta: 'Jepang · 1.2 km', rating: '4.7', time: '22 menit' },
  { img: '🍕', name: 'Pizza Roma', meta: 'Italia · 1.5 km', rating: '4.6', time: '28 menit' },
];

export default function App() {
  const [activeCat, setActiveCat] = useState(0);

  // Auto-rotate category for demo
  useEffect(() => {
    const interval = setInterval(() => {
      setActiveCat((c) => (c + 1) % CATS.length);
    }, 2000);
    return () => clearInterval(interval);
  }, []);

  return (
    <View style={styles.container}>
      <View style={styles.loc}>
        <View>
          <Text style={styles.locL}>ANTAR KE</Text>
          <Text style={styles.locV}>Jl. Sudirman No. 12</Text>
        </View>
        <Text style={styles.locR}>Ubah ›</Text>
      </View>

      <View style={styles.search}>
        <Text style={styles.searchIcon}>🔍</Text>
        <Text style={styles.searchText}>Cari makanan atau restoran</Text>
      </View>

      <ScrollView horizontal showsHorizontalScrollIndicator={false} style={styles.cats}>
        {CATS.map((cat, i) => (
          <TouchableOpacity
            key={cat}
            style={[styles.cat, i === activeCat && styles.catActive]}
            onPress={() => setActiveCat(i)}
          >
            <Text style={[styles.catText, i === activeCat && styles.catTextActive]}>
              {cat}
            </Text>
          </TouchableOpacity>
        ))}
      </ScrollView>

      <View style={styles.banner}>
        <View>
          <Text style={styles.bannerL}>PROMO HARI INI</Text>
          <Text style={styles.bannerT}>Diskon 50% minggu ini</Text>
        </View>
        <Text style={styles.bannerIc}>🍱</Text>
      </View>

      <View style={styles.sectionTitle}>
        <Text style={styles.titleText}>Restoran terdekat</Text>
        <Text style={styles.seeAll}>Lihat semua ›</Text>
      </View>

      <ScrollView style={styles.restoList} showsVerticalScrollIndicator={false}>
        {RESTOS.map((r) => (
          <View key={r.name} style={styles.resto}>
            <View style={styles.restoImg}>
              <Text style={styles.restoEmoji}>{r.img}</Text>
            </View>
            <View style={styles.restoInfo}>
              <Text style={styles.restoName}>{r.name}</Text>
              <Text style={styles.restoMeta}>{r.meta}</Text>
              <View style={styles.restoRow}>
                <Text style={styles.rating}>★ {r.rating}</Text>
                <Text style={styles.time}>{r.time}</Text>
              </View>
            </View>
          </View>
        ))}
      </ScrollView>
    </View>
  );
}

const styles = StyleSheet.create({
  container: { flex: 1, backgroundColor: COLORS.bg, paddingTop: 48 },
  loc: {
    flexDirection: 'row',
    justifyContent: 'space-between',
    alignItems: 'center',
    paddingHorizontal: 20,
    paddingBottom: 16,
  },
  locL: { fontSize: 10, color: COLORS.textSecondary, letterSpacing: 0.5 },
  locV: { fontSize: 14, fontWeight: '600', color: COLORS.textPrimary, marginTop: 2 },
  locR: { color: COLORS.accent, fontSize: 13 },
  search: {
    flexDirection: 'row',
    alignItems: 'center',
    gap: 10,
    marginHorizontal: 20,
    marginBottom: 16,
    backgroundColor: COLORS.card,
    borderRadius: 12,
    paddingHorizontal: 16,
    paddingVertical: 12,
    borderWidth: 1,
    borderColor: COLORS.border,
  },
  searchIcon: { fontSize: 13, color: COLORS.textMuted },
  searchText: { fontSize: 13, color: COLORS.textMuted },
  cats: { paddingHorizontal: 20, marginBottom: 20, maxHeight: 40 },
  cat: {
    backgroundColor: COLORS.card,
    borderWidth: 1,
    borderColor: COLORS.border,
    paddingHorizontal: 14,
    paddingVertical: 8,
    borderRadius: 20,
    marginRight: 8,
  },
  catActive: { backgroundColor: COLORS.textPrimary, borderColor: COLORS.textPrimary },
  catText: { fontSize: 12, color: COLORS.textSecondary },
  catTextActive: { color: 'white' },
  banner: {
    marginHorizontal: 20,
    marginBottom: 20,
    backgroundColor: COLORS.accent,
    borderRadius: 16,
    padding: 16,
    flexDirection: 'row',
    justifyContent: 'space-between',
    alignItems: 'center',
  },
  bannerL: { color: 'rgba(255,255,255,0.9)', fontSize: 10, letterSpacing: 0.5 },
  bannerT: { color: 'white', fontSize: 16, fontWeight: '700', marginTop: 4 },
  bannerIc: { fontSize: 36 },
  sectionTitle: {
    flexDirection: 'row',
    justifyContent: 'space-between',
    paddingHorizontal: 20,
    marginBottom: 12,
  },
  titleText: { fontSize: 15, fontWeight: '700', color: COLORS.textPrimary },
  seeAll: { color: COLORS.accent, fontSize: 12, fontWeight: '500' },
  restoList: { paddingHorizontal: 20 },
  resto: {
    backgroundColor: COLORS.card,
    borderRadius: 14,
    borderWidth: 1,
    borderColor: COLORS.border,
    marginBottom: 12,
    padding: 10,
    flexDirection: 'row',
    gap: 12,
  },
  restoImg: {
    width: 76,
    height: 76,
    borderRadius: 10,
    backgroundColor: COLORS.border,
    alignItems: 'center',
    justifyContent: 'center',
  },
  restoEmoji: { fontSize: 32 },
  restoInfo: { flex: 1, justifyContent: 'center' },
  restoName: { fontSize: 14, fontWeight: '600', color: COLORS.textPrimary },
  restoMeta: { fontSize: 11, color: COLORS.textSecondary, marginTop: 3 },
  restoRow: {
    flexDirection: 'row',
    justifyContent: 'space-between',
    marginTop: 6,
  },
  rating: { color: COLORS.accent, fontWeight: '600', fontSize: 11 },
  time: { color: COLORS.textSecondary, fontSize: 11 },
});
