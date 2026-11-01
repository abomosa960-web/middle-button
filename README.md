# Middle Button Remap (Windows)

أداة بسيطة بتخلّي الزر الأوسط (عجلة الماوس) ينفذ **Backspace** أو **Enter** حسب اختيارك.

## المتطلبات
- ويندوز
- [AutoHotkey v2](https://www.autohotkey.com/)

## التشغيل
1. دبل كليك على `middle.ahk` واختار الأكشن واضغط **حفظ**.
2. عشان تشتغل مع الويندوز: `Win + R` ← اكتب `shell:startup` ← حط فيه اختصار للملف بالوسيط `silent`:

```
"C:\Program Files\AutoHotkey\v2\AutoHotkey64.exe" "C:\path\to\middle.ahk" silent
```

الاختيار بيتحفظ في `mouse.ini` جنب الملف.
