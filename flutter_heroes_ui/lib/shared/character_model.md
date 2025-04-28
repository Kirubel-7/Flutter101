# ✅ CharacterModel Design Checklist – Future-Proof (Flutter / Dart)

Design your Call of Duty-style character model with flexibility, structure, and scalability in mind.

---

## 🆔 Basic Identity
- [ ] `id: String` – unique character ID
- [ ] `name: String` – full character name
- [ ] `codename: String` – optional alias/nickname
- [ ] `avatarUrl: String` – asset or network image path

---

## 🎭 Character Identity
- [ ] `origin: String` – e.g., country/unit
- [ ] `faction: String` – e.g., NATO, Allegiance
- [ ] `bio: String` – backstory or lore
<!-- - [ ] `role: String` or `enum Role` – like Sniper, Assault, Support -->
- [ ] `vocation: Vocation` – (use enhanced enum with label & description)

---

## ⚔️ Skills & Weapons(set of type skill(class))
- [ ] `skills: List<SkillModel>` – list of abilities with metadata
- [ ] `weapons: List<WeaponModel>` – list of weapons per character
- [ ] `perks: List<PerkModel>` or `enum Perk` – optional boosts or bonuses

---

## 🛡️ Stats & Attributes(mixin)
- [ ] `level: int`
- [ ] `health: int`
- [ ] `armor: int`
- [ ] `power: int`
- [ ] `speed: int`

---

## 🧠 UI & State Flags
- [ ] `isUnlocked: bool` – availability status
- [ ] `isFavorite: bool` – user’s marked favorite
- [ ] (Optional) Add a `Selectable` mixin for UI toggling behavior

---

## 🧩 Extra Design Features (Optional)
- [ ] `backgroundColor: String` – custom UI color
- [ ] `tags: List<String>` – categorization or filters (e.g. "stealth", "rare")

---

## 🧬 Code Quality / Best Practices
- [ ] Use **enhanced enums** (with properties: label, description)
- [ ] Extract **SkillModel**, **WeaponModel**, and **PerkModel** into separate files
- [ ] Use **default values** and **named constructors**
- [ ] Implement **`toJson()` / `fromJson()`** for serialization
- [ ] Design with **immutability** (use `final`, no setters)

---

💡
