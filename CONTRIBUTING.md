# Contributing

Halo, makasih udah mau kontribusi ke **ui-folio**. Gua tulis ini singkat aja — gak pake dokumen 5 halaman kayak company handbook.

---

# 🇮🇩 Versi Bahasa Indonesia

## Tambah kit baru

1. **Fork** repo ini
2. Bikin branch baru: `git checkout -b feat/nama-kit-kamu`
3. Bikin folder kit kamu di framework yang sesuai (contoh: `flutter/login-screen-keren/`)
4. Isi dengan kode asli — `.dart`, `.tsx`, `.swift`, atau `.kt` (bukan cuma mockup)
5. Tambah `README.md` bilingual (lihat kit yang udah ada buat contoh format)
6. Screenshot PNG, simpen di `assets/previews/`, embed di README
7. Commit, push, buka PR

Selesai. Gak perlu email dulu, gak perlu minta izin. Langsung aja.

## Soal aturan

Gua gak mau bikin daftar aturan panjang. Tapi beberapa hal basic:

- **Tulis kode sendiri.** Jangan copas dari repo lain yang license-nya restriktif. Kalau mau port desain orang, credit aja di README.
- **Pake SVG buat ikon, jangan emoji.** Alasannya simple: emoji render beda-beda di Android/iOS/Windows. SVG kelihatan sama di mana-mana.
- **Pilih palet yang tenang.** Cream, dark warm, forest green, monochrome, sand, paper — itu good. Gradient biru-merah, ungu-pink, material default — itu bad. Kalau ragu, lihat kit yang udah ada.
- **Dark mode kalau masuk akal.** Gak wajib tiap kit. Login screen emang bagusnya light/dark punya, tapi kalkulator terminal green-on-black ya dark only gitu aja. Pakai otak.
- **Screenshot PNG, bukan JPG/GIF/MP4.** Resolusi bebas, yang penting tajam. Yang udah ada di repo kebanyakan 760×1520 @ 2x.
- **Responsive reasonable.** Jangan sampai hancur di iPhone SE atau iPad Pro. Tapi gak perlu test 50 device — common sense aja.

## Naming folder

Pakai kebab-case, format `<tipe>-<gaya>`:

- `login-screen-minimalist` ✅
- `LoginScreen_Minimalist` ❌
- `dashboard-finance` ✅
- `chat-ui-monochrome` ✅

## Format README kit

Liat aja salah satu kit yang udah ada (contoh: [`flutter/login-screen-minimalist/README.md`](./flutter/login-screen-minimalist/README.md)). Strukturnya:

- Judul + deskripsi singkat
- Preview (embed PNG)
- Detail (bullet palet, tipografi, fitur)
- Cara pakai (command bash)
- Customisasi (file mana ubah apa)
- Tech stack
- License (MIT)
- `---`
- English version (sama persis strukturnya)

## Review

Gua cek PR biasanya 1-3 hari. Kalau ada yang mau diubah, gua comment di PR-nya. Jangan defensive, kita diskusi aja. Kalau PR-nya udah oke, gua merge.

## Stuck?

Buka [issue](https://github.com/shawawah12-alt/ui-folio/issues/new) dengan label `question`. Atau kalau lo mau ngobrol ide kit dulu sebelum ngecode, juga boleh. Gak gigit kok.

---

# 🇬🇧 English Version

Hey, thanks for wanting to contribute to **ui-folio**. Keeping this short — no 5-page company-handbook vibes.

## Adding a new kit

1. **Fork** this repo
2. Create a new branch: `git checkout -b feat/your-kit-name`
3. Make your kit folder under the right framework (e.g. `flutter/login-screen-cool/`)
4. Fill it with real source — `.dart`, `.tsx`, `.swift`, or `.kt` (not just mockups)
5. Add a bilingual `README.md` (look at existing kits for the format)
6. Take a PNG screenshot, put it in `assets/previews/`, embed it in the README
7. Commit, push, open a PR

That's it. No email first, no asking permission. Just do it.

## On rules

I don't want to write a long rulebook. But a few basics:

- **Write your own code.** Don't copy from other repos with restrictive licenses. If you're porting someone's design, just credit them in the README.
- **Use SVG for icons, not emoji.** Reason is simple: emoji renders differently on Android/iOS/Windows. SVG looks the same everywhere.
- **Pick a calm palette.** Cream, dark warm, forest green, monochrome, sand, paper — those are good. Blue-red gradient, purple-pink, default Material — those are bad. If unsure, look at the existing kits.
- **Dark mode if it makes sense.** Not required for every kit. A login screen should probably have light/dark, but a terminal-style calculator is dark only and that's fine. Use your brain.
- **PNG screenshots, not JPG/GIF/MP4.** Resolution is flexible, just make sure it's sharp. Existing ones are mostly 760×1520 @ 2x.
- **Reasonable responsiveness.** Don't break on iPhone SE or iPad Pro. But you don't need to test 50 devices — common sense is enough.

## Folder naming

Use kebab-case, format `<type>-<style>`:

- `login-screen-minimalist` ✅
- `LoginScreen_Minimalist` ❌
- `dashboard-finance` ✅
- `chat-ui-monochrome` ✅

## Kit README format

Just look at one of the existing kits (e.g. [`flutter/login-screen-minimalist/README.md`](./flutter/login-screen-minimalist/README.md)). Structure:

- Title + short description
- Preview (embed PNG)
- Detail (palette, typography, features as bullets)
- How to use (bash commands)
- Customization (which file changes what)
- Tech stack
- License (MIT)
- `---`
- English version (same exact structure)

## Review

I usually check PRs within 1-3 days. If something needs changing, I'll comment on the PR. Don't be defensive, let's just discuss. If it looks good, I'll merge.

## Stuck?

Open an [issue](https://github.com/shawawah12-alt/ui-folio/issues/new) with the `question` label. Or if you want to discuss a kit idea before coding, that's fine too. I don't bite.
