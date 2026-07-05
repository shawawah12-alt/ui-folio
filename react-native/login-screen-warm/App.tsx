import React, { useState } from 'react';
import {
  StyleSheet,
  Text,
  View,
  TextInput,
  TouchableOpacity,
  KeyboardAvoidingView,
  Platform,
  Alert,
} from 'react-native';

const COLORS = {
  bg: '#1A1714',
  card: '#252019',
  border: '#34302A',
  accent: '#C66B3D',
  textPrimary: '#F5EFE6',
  textSecondary: '#9A8F80',
  textMuted: '#6B6359',
};

export default function App() {
  const [email, setEmail] = useState('');
  const [password, setPassword] = useState('');
  const [loading, setLoading] = useState(false);
  const [showPassword, setShowPassword] = useState(false);

  const validateEmail = (val: string) => /^[^@]+@[^@]+\.[^@]+$/.test(val);

  const handleLogin = async () => {
    if (!validateEmail(email)) {
      Alert.alert('Oops', 'Email tidak valid');
      return;
    }
    if (password.length < 6) {
      Alert.alert('Oops', 'Password minimal 6 karakter');
      return;
    }
    setLoading(true);
    await new Promise((r) => setTimeout(r, 1500));
    setLoading(false);
    Alert.alert('Berhasil', 'Login berhasil (demo)');
  };

  return (
    <KeyboardAvoidingView
      style={styles.container}
      behavior={Platform.OS === 'ios' ? 'padding' : undefined}
    >
      <View style={styles.logo}>
        <Text style={styles.logoText}>R</Text>
      </View>

      <Text style={styles.title}>Selamat datang</Text>
      <Text style={styles.subtitle}>Masuk untuk melanjutkan</Text>

      <TextInput
        style={styles.input}
        placeholder="nama@email.com"
        placeholderTextColor={COLORS.textMuted}
        value={email}
        onChangeText={setEmail}
        keyboardType="email-address"
        autoCapitalize="none"
      />

      <View style={styles.passwordWrap}>
        <TextInput
          style={[styles.input, { flex: 1, marginBottom: 0 }]}
          placeholder="••••••••"
          placeholderTextColor={COLORS.textMuted}
          value={password}
          onChangeText={setPassword}
          secureTextEntry={!showPassword}
        />
        <TouchableOpacity
          style={styles.eyeBtn}
          onPress={() => setShowPassword(!showPassword)}
        >
          <Text style={styles.eyeText}>{showPassword ? 'Sembunyikan' : 'Lihat'}</Text>
        </TouchableOpacity>
      </View>

      <TouchableOpacity onPress={() => Alert.alert('Lupa password?')}>
        <Text style={styles.forgot}>Lupa password?</Text>
      </TouchableOpacity>

      <TouchableOpacity
        style={[styles.btn, loading && styles.btnDisabled]}
        onPress={handleLogin}
        disabled={loading}
        activeOpacity={0.8}
      >
        <Text style={styles.btnText}>{loading ? 'Memuat…' : 'Masuk'}</Text>
      </TouchableOpacity>

      <View style={styles.divider}>
        <View style={styles.dividerLine} />
        <Text style={styles.dividerText}>ATAU LANJUTKAN DENGAN</Text>
        <View style={styles.dividerLine} />
      </View>

      <View style={styles.ssoRow}>
        <TouchableOpacity style={styles.ssoBtn} activeOpacity={0.8}>
          <Text style={styles.ssoText}>Google</Text>
        </TouchableOpacity>
        <TouchableOpacity style={styles.ssoBtn} activeOpacity={0.8}>
          <Text style={styles.ssoText}>Apple</Text>
        </TouchableOpacity>
      </View>

      <View style={styles.footer}>
        <Text style={styles.footerText}>Belum punya akun? </Text>
        <TouchableOpacity>
          <Text style={styles.footerLink}>Daftar</Text>
        </TouchableOpacity>
      </View>
    </KeyboardAvoidingView>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: COLORS.bg,
    paddingHorizontal: 28,
    paddingTop: 72,
    paddingBottom: 32,
  },
  logo: {
    width: 40,
    height: 40,
    borderRadius: 20,
    backgroundColor: COLORS.accent,
    alignItems: 'center',
    justifyContent: 'center',
    marginBottom: 56,
  },
  logoText: {
    color: COLORS.bg,
    fontSize: 17,
    fontWeight: '600',
  },
  title: {
    color: COLORS.textPrimary,
    fontSize: 26,
    fontWeight: '600',
    letterSpacing: -0.5,
    marginBottom: 6,
  },
  subtitle: {
    color: COLORS.textSecondary,
    fontSize: 14,
    marginBottom: 36,
  },
  input: {
    backgroundColor: COLORS.card,
    borderWidth: 1,
    borderColor: COLORS.border,
    borderRadius: 10,
    paddingHorizontal: 14,
    paddingVertical: 12,
    marginBottom: 12,
    fontSize: 14,
    color: COLORS.textPrimary,
  },
  passwordWrap: {
    flexDirection: 'row',
    alignItems: 'center',
    marginBottom: 12,
  },
  eyeBtn: {
    position: 'absolute',
    right: 14,
    padding: 6,
  },
  eyeText: {
    color: COLORS.textMuted,
    fontSize: 12,
  },
  forgot: {
    color: COLORS.accent,
    fontSize: 12,
    textAlign: 'right',
    marginBottom: 28,
    marginRight: 4,
  },
  btn: {
    backgroundColor: COLORS.accent,
    paddingVertical: 13,
    borderRadius: 10,
    alignItems: 'center',
  },
  btnDisabled: {
    opacity: 0.6,
  },
  btnText: {
    color: COLORS.bg,
    fontSize: 14,
    fontWeight: '600',
    letterSpacing: 0.1,
  },
  divider: {
    flexDirection: 'row',
    alignItems: 'center',
    marginVertical: 24,
    gap: 12,
  },
  dividerLine: {
    flex: 1,
    height: 1,
    backgroundColor: COLORS.border,
  },
  dividerText: {
    color: COLORS.textMuted,
    fontSize: 11,
    letterSpacing: 0.5,
  },
  ssoRow: {
    flexDirection: 'row',
    gap: 10,
    justifyContent: 'center',
  },
  ssoBtn: {
    flex: 1,
    borderWidth: 1,
    borderColor: COLORS.border,
    borderRadius: 10,
    paddingVertical: 10,
    alignItems: 'center',
  },
  ssoText: {
    color: COLORS.textPrimary,
    fontSize: 13,
    fontWeight: '500',
  },
  footer: {
    flexDirection: 'row',
    justifyContent: 'center',
    marginTop: 'auto',
    paddingTop: 24,
  },
  footerText: {
    color: COLORS.textSecondary,
    fontSize: 13,
  },
  footerLink: {
    color: COLORS.textPrimary,
    fontSize: 13,
    textDecorationLine: 'underline',
  },
});
