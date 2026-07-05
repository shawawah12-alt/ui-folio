import React, { useState } from 'react';
import {
  StyleSheet,
  Text,
  View,
  ScrollView,
  TouchableOpacity,
  Image,
} from 'react-native';

const COLORS = {
  bg: '#FBF7F0',
  card: '#FFFFFF',
  border: '#E8DCC8',
  textPrimary: '#2D2520',
  textSecondary: '#6B5D4F',
  accent: '#C66B3D',
  cream: '#E8DCC8',
};

const SLIDES = ['👜', '👁', '📐'];

export default function App() {
  const [activeSlide, setActiveSlide] = useState(0);
  const [qty, setQty] = useState(1);

  // Auto-rotate gallery (in real app, use FlatList horizontal paging)
  React.useEffect(() => {
    const interval = setInterval(() => {
      setActiveSlide((s) => (s + 1) % SLIDES.length);
    }, 2000);
    return () => clearInterval(interval);
  }, []);

  return (
    <View style={styles.container}>
      <View style={styles.top}>
        <Text style={styles.back}>‹</Text>
        <View style={styles.actions}>
          <Text style={styles.actionIcon}>♡</Text>
          <Text style={styles.actionIcon}>↗</Text>
        </View>
      </View>

      <View style={styles.gallery}>
        <Text style={styles.galleryIllo}>{SLIDES[activeSlide]}</Text>
        <View style={styles.dots}>
          {SLIDES.map((_, i) => (
            <View
              key={i}
              style={[styles.dot, i === activeSlide && styles.dotActive]}
            />
          ))}
        </View>
      </View>

      <ScrollView style={styles.info} showsVerticalScrollIndicator={false}>
        <Text style={styles.brand}>TAS RANSEL</Text>
        <Text style={styles.name}>Carrier Daily 22L</Text>

        <View style={styles.rating}>
          <Text style={styles.stars}>★★★★★</Text>
          <Text style={styles.ratingText}>4.8 (1.243 ulasan)</Text>
        </View>

        <View style={styles.priceRow}>
          <Text style={styles.price}>Rp 429K</Text>
          <View style={styles.qty}>
            <TouchableOpacity onPress={() => setQty(Math.max(1, qty - 1))}>
              <Text style={styles.qtyBtn}>−</Text>
            </TouchableOpacity>
            <Text style={styles.qtyNum}>{qty}</Text>
            <TouchableOpacity onPress={() => setQty(qty + 1)}>
              <Text style={styles.qtyBtn}>+</Text>
            </TouchableOpacity>
          </View>
        </View>

        <Text style={styles.desc}>
          Tas harian dengan kompartemen laptop 14", bahan water-resistant, dan
          tali ergonomis. Cocok untuk kerja maupun weekend trip.
        </Text>
      </ScrollView>

      <View style={styles.bottom}>
        <TouchableOpacity style={styles.fav}>
          <Text style={styles.favIcon}>♡</Text>
        </TouchableOpacity>
        <TouchableOpacity style={styles.addBtn}>
          <Text style={styles.addText}>Tambah ke keranjang</Text>
        </TouchableOpacity>
      </View>
    </View>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: COLORS.bg,
    paddingTop: 48,
  },
  top: {
    flexDirection: 'row',
    justifyContent: 'space-between',
    alignItems: 'center',
    paddingHorizontal: 20,
    paddingBottom: 12,
  },
  back: { fontSize: 22, color: COLORS.textPrimary },
  actions: { flexDirection: 'row', gap: 14 },
  actionIcon: { fontSize: 18, color: COLORS.textPrimary },
  gallery: {
    height: 320,
    backgroundColor: COLORS.cream,
    marginHorizontal: 20,
    borderRadius: 20,
    alignItems: 'center',
    justifyContent: 'center',
    position: 'relative',
  },
  galleryIllo: { fontSize: 90, color: '#8B6F47' },
  dots: {
    position: 'absolute',
    bottom: 12,
    flexDirection: 'row',
    gap: 6,
  },
  dot: {
    width: 6,
    height: 6,
    borderRadius: 3,
    backgroundColor: 'rgba(139,111,71,0.3)',
  },
  dotActive: {
    backgroundColor: '#8B6F47',
    width: 18,
  },
  info: {
    paddingHorizontal: 20,
    paddingTop: 20,
  },
  brand: {
    color: '#8B6F47',
    fontSize: 12,
    fontWeight: '600',
    letterSpacing: 0.5,
  },
  name: {
    fontSize: 22,
    fontWeight: '700',
    color: COLORS.textPrimary,
    letterSpacing: -0.3,
    marginTop: 4,
  },
  rating: {
    flexDirection: 'row',
    alignItems: 'center',
    gap: 6,
    marginTop: 8,
  },
  stars: { color: COLORS.accent, fontSize: 12 },
  ratingText: { color: COLORS.textSecondary, fontSize: 12 },
  priceRow: {
    flexDirection: 'row',
    justifyContent: 'space-between',
    alignItems: 'center',
    marginTop: 16,
  },
  price: {
    fontSize: 24,
    fontWeight: '700',
    color: COLORS.textPrimary,
  },
  qty: {
    flexDirection: 'row',
    alignItems: 'center',
    gap: 12,
    backgroundColor: COLORS.card,
    paddingHorizontal: 10,
    paddingVertical: 6,
    borderRadius: 20,
    borderWidth: 1,
    borderColor: COLORS.border,
  },
  qtyBtn: { color: '#8B6F47', fontWeight: '700', fontSize: 16 },
  qtyNum: { fontSize: 14, color: COLORS.textPrimary },
  desc: {
    marginTop: 14,
    fontSize: 13,
    lineHeight: 21,
    color: COLORS.textSecondary,
  },
  bottom: {
    flexDirection: 'row',
    gap: 12,
    paddingHorizontal: 20,
    paddingVertical: 16,
    paddingBottom: 24,
  },
  fav: {
    width: 48,
    height: 48,
    borderRadius: 24,
    backgroundColor: COLORS.card,
    borderWidth: 1,
    borderColor: COLORS.border,
    alignItems: 'center',
    justifyContent: 'center',
  },
  favIcon: { fontSize: 18, color: COLORS.accent },
  addBtn: {
    flex: 1,
    backgroundColor: COLORS.textPrimary,
    borderRadius: 24,
    paddingVertical: 14,
    alignItems: 'center',
  },
  addText: { color: 'white', fontWeight: '600', fontSize: 14 },
});
