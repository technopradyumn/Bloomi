# 4. UI and UX design system


Personality: soft, round, friendly, a little playful. Think pastel cards, big rounded corners, large readable numbers, one mascot that reacts. The reference screenshots show the right feel: pastel mint, sky and butter-yellow cards on a near-white background, big bold numbers, circular progress, rounded bottom navigation.


Colour tokens


| Token | Hex | Use |
| --- | --- | --- |
| Mint | #7ED3B2 | Primary, success, food |
| Sky | #BFE6F5 | Water, heart, info cards |
| Butter | #FFE9A8 | Highlights, plan, rewards |
| Peach | #FFC9B5 | Activity, warm accents |
| Lilac | #D9CCFF | Sleep, calm, insights |
| Ink | #1F2A37 | Main text |
| Slate | #6B7785 | Secondary text |
| Background | #F6F7FB | App background |
| Surface | #FFFFFF | Cards |
| Soft Orange | #FFA94D | Gentle warnings (never harsh red) |



Use each pastel as a card background with Ink text on top. Keep contrast at WCAG AA. A dark theme can come after launch.


Typography: headings Baloo 2 (700), body Nunito (400/600). Big number style 40 to 56sp for key stats. Body 14 to 16sp.


Shape and spacing: card radius 24, hero card radius 32, buttons fully pill-shaped, chips radius 16. Base spacing unit 8. Screen side padding 20. Soft shadow only (blur 24, 6% opacity).


Core components

- Pastel stat card (icon, label, big number, tiny trend)
- Progress ring (animated fill, count-up number in the centre)
- Macro bars (protein, carbs, fat, fibre)
- Pill button (primary filled, secondary tonal, text)
- Chip selector (single and multi)
- Quantity picker (number stepper plus unit chips: g, ml, katori, bowl, cup, glass, piece, roti, tbsp, tsp)
- Meal section header (Breakfast, Lunch, Snack, Dinner) with calories subtotal
- Bottom sheet, toast, dialog
- Empty state (mascot plus one-line message plus one action)
- Skeleton loader, offline banner, sync status chip
- Bottom navigation with 5 tabs and a floating + quick-add button

Mascot: "Bloo" (placeholder name). A round mint blob with a small leaf or heart on top. States built as one Rive state machine: idle, wave, happy, cheer (goal hit), eating, drinking, thinking (analysing photo), sleepy (night), walking, gentle-sad (missed day, always kind). Appears on splash, empty states, goal completion, scan analysing, and Home greeting.


Animation catalogue

- Splash: logo pops with spring, mascot waves, soft floating food and heart icons, then auto-advance in about 2.5 seconds
- Rings and bars fill on screen open (600 ms ease-out), numbers count up
- Food added: the item icon flies into the meal section and the ring updates
- Water: bottle fills with a wave animation
- Goal reached: confetti plus mascot cheer plus light haptic
- Page transitions: shared fade-through, cards slide up with small stagger
- Photo analysing: mascot thinking with orbiting food icons
- Always respect reduce-motion

Copy rules: short, kind, second person. Examples: "Nice start! Your first meal is in." Never use guilt words. Numbers are labelled "estimated" where they are estimates.


States every screen must handle: loading (skeleton), empty (mascot), error (friendly retry), offline (banner, features still work), permission denied (explain why and offer a settings shortcut).
