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
import { BlurView } from 'expo-blur';

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
    Alert.alert('Berhasil', 'Login berhasil! (demo)');
  };

  return (
    <KeyboardAvoidingView
      style={styles.container}
      behavior={Platform.OS === 'ios' ? 'padding' : undefined}
    >
      <View style={styles.backgroundGradient} />
      <BlurView intensity={80} tint="light" style={styles.glassCard}>
        <Text style={styles.title}>Selamat Datang</Text>
        <Text style={styles.subtitle}>Masuk untuk melanjutkan</Text>

        <TextInput
          style={styles.input}
          placeholder="Email"
          placeholderTextColor="#888"
          value={email}
          onChangeText={setEmail}
          keyboardType="email-address"
          autoCapitalize="none"
        />

        <View style={styles.passwordContainer}>
          <TextInput
            style={[styles.input, { flex: 1 }]}
            placeholder="Password"
            placeholderTextColor="#888"
            value={password}
            onChangeText={setPassword}
            secureTextEntry={!showPassword}
          />
          <TouchableOpacity
            style={styles.eyeIcon}
            onPress={() => setShowPassword(!showPassword)}
          >
            <Text>{showPassword ? '🙈' : '👁'}</Text>
          </TouchableOpacity>
        </View>

        <TouchableOpacity onPress={() => Alert.alert('Lupa password?')}>
          <Text style={styles.forgotText}>Lupa password?</Text>
        </TouchableOpacity>

        <TouchableOpacity
          style={[styles.button, loading && styles.buttonDisabled]}
          onPress={handleLogin}
          disabled={loading}
        >
          <Text style={styles.buttonText}>
            {loading ? 'Loading...' : 'Masuk'}
          </Text>
        </TouchableOpacity>

        <View style={styles.footer}>
          <Text style={styles.footerText}>Belum punya akun? </Text>
          <TouchableOpacity>
            <Text style={styles.linkText}>Daftar sekarang</Text>
          </TouchableOpacity>
        </View>
      </BlurView>
    </KeyboardAvoidingView>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    justifyContent: 'center',
    alignItems: 'center',
  },
  backgroundGradient: {
    position: 'absolute',
    top: 0,
    left: 0,
    right: 0,
    bottom: 0,
    backgroundColor: '#6C63FF',
    backgroundImage: 'linear-gradient(135deg, #6C63FF 0%, #FF6584 100%)',
  },
  glassCard: {
    width: '88%',
    padding: 24,
    borderRadius: 24,
    overflow: 'hidden',
    borderWidth: 1,
    borderColor: 'rgba(255,255,255,0.2)',
  },
  title: {
    fontSize: 28,
    fontWeight: '700',
    color: '#1a1a2e',
    textAlign: 'center',
    marginBottom: 8,
  },
  subtitle: {
    fontSize: 14,
    color: '#555',
    textAlign: 'center',
    marginBottom: 28,
  },
  input: {
    backgroundColor: 'rgba(255,255,255,0.7)',
    padding: 14,
    borderRadius: 12,
    marginBottom: 14,
    fontSize: 16,
    borderWidth: 1,
    borderColor: 'rgba(0,0,0,0.05)',
  },
  passwordContainer: {
    flexDirection: 'row',
    alignItems: 'center',
    marginBottom: 6,
  },
  eyeIcon: {
    position: 'absolute',
    right: 14,
    padding: 6,
  },
  forgotText: {
    color: '#6C63FF',
    textAlign: 'right',
    marginBottom: 18,
    fontSize: 13,
  },
  button: {
    backgroundColor: '#6C63FF',
    paddingVertical: 16,
    borderRadius: 12,
    alignItems: 'center',
  },
  buttonDisabled: {
    opacity: 0.6,
  },
  buttonText: {
    color: 'white',
    fontSize: 16,
    fontWeight: '600',
  },
  footer: {
    flexDirection: 'row',
    justifyContent: 'center',
    marginTop: 22,
  },
  footerText: {
    color: '#555',
    fontSize: 14,
  },
  linkText: {
    color: '#6C63FF',
    fontSize: 14,
    fontWeight: '600',
  },
});
