.class public Lteam/rainfall/ctap/MixinCFG;
.super Ljava/lang/Object;
.source "MixinCFG.java"


# annotations
.annotation runtime Lteam/rainfall/finality/luminosity2/annotations/Mixin;
    mixinClass = "age.of.civilizations2.jakowski.lukasz.CFG"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getNumber_SHORT(I)Ljava/lang/String;
    .registers 8
    .param p0, "nValue"  # I

    .line 144
    const-string v0, "Value_Thousand"

    const-string v1, "Value_Million"

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsGD:Lage/of/civilizations2/jakowski/lukasz/SettingsGD;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/SettingsGD;->LANG_TAG:Ljava/lang/String;

    const-string v3, "cn"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 145
    invoke-static {p0}, Lteam/rainfall/ctap/NumberShortenUtil;->getNumber_SHORT(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 147
    :cond_15
    const-string v2, ""

    const/16 v3, 0x3e8

    if-ge p0, v3, :cond_2d

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 149
    :cond_2d
    const v3, 0xf4240

    const/4 v4, 0x0

    const/16 v5, 0x30

    const-string v6, "."

    if-ge p0, v3, :cond_ac

    .line 150
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    int-to-float v2, p0

    const/high16 v3, 0x447a0000  # 1000.0f

    div-float/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 153
    .local v1, "outValue":Ljava/lang/String;
    :try_start_4c
    invoke-virtual {v1, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v5, :cond_72

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    div-int/lit16 v3, p0, 0x3e8

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    invoke-virtual {v3, v0}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    :goto_6d
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_90

    :cond_72
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x2

    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    invoke-virtual {v3, v0}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2
    :try_end_8f
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4c .. :try_end_8f} :catch_91

    goto :goto_6d

    :goto_90
    return-object v0

    .line 154
    :catch_91
    move-exception v2

    .line 155
    .local v2, "var3":Ljava/lang/IndexOutOfBoundsException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    div-int/lit16 v4, p0, 0x3e8

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    invoke-virtual {v4, v0}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 158
    .end local v1  # "outValue":Ljava/lang/String;
    .end local v2  # "var3":Ljava/lang/IndexOutOfBoundsException;
    :cond_ac
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    int-to-float v2, p0

    const v3, 0x49742400  # 1000000.0f

    div-float/2addr v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 161
    .local v0, "outValue":Ljava/lang/String;
    :try_start_c2
    invoke-virtual {v0, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v5, :cond_e8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    div-int/lit16 v3, p0, 0x3e8

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    invoke-virtual {v3, v1}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    :goto_e3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_106

    :cond_e8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x2

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    invoke-virtual {v3, v1}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2
    :try_end_105
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_c2 .. :try_end_105} :catch_107

    goto :goto_e3

    :goto_106
    return-object v1

    .line 162
    :catch_107
    move-exception v2

    .line 163
    .local v2, "var4":Ljava/lang/IndexOutOfBoundsException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    div-int/lit16 v4, p0, 0x3e8

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    invoke-virtual {v4, v1}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getNumber_SHORT(J)Ljava/lang/String;
    .registers 11
    .param p0, "nValue"  # J

    .line 194
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsGD:Lage/of/civilizations2/jakowski/lukasz/SettingsGD;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/SettingsGD;->LANG_TAG:Ljava/lang/String;

    const-string v1, "cn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 195
    invoke-static {p0, p1}, Lteam/rainfall/ctap/NumberShortenUtil;->getNumber_SHORT(J)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 197
    :cond_11
    const-wide/16 v0, 0x3e8

    cmp-long v2, p0, v0

    if-gez v2, :cond_2b

    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 199
    :cond_2b
    const-wide/32 v0, 0xf4240

    const/16 v2, 0x2e

    const/16 v3, 0x2c

    const-string v4, ".0"

    const/4 v5, 0x1

    const-string v6, "%.1f"

    const/4 v7, 0x0

    cmp-long v8, p0, v0

    if-gez v8, :cond_7a

    .line 200
    long-to-float v0, p0

    const/high16 v1, 0x447a0000  # 1000.0f

    div-float/2addr v0, v1

    .line 201
    .local v0, "thousands":F
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v7

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 202
    .local v1, "outValue":Ljava/lang/String;
    invoke-virtual {v1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5c

    .line 203
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    invoke-virtual {v1, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 206
    :cond_5c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    const-string v4, "Value_Thousand"

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 208
    .end local v0  # "thousands":F
    .end local v1  # "outValue":Ljava/lang/String;
    :cond_7a
    long-to-float v0, p0

    const v1, 0x49742400  # 1000000.0f

    div-float/2addr v0, v1

    .line 209
    .local v0, "millions":F
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v7

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 210
    .restart local v1  # "outValue":Ljava/lang/String;
    invoke-virtual {v1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9b

    .line 211
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    invoke-virtual {v1, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 214
    :cond_9b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    const-string v4, "Value_Million"

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getNumber_SHORT_ARMY(I)Ljava/lang/String;
    .registers 8
    .param p0, "nValue"  # I

    .line 169
    const-string v0, "Value_Thousand"

    const-string v1, "Value_Million"

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsGD:Lage/of/civilizations2/jakowski/lukasz/SettingsGD;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/SettingsGD;->LANG_TAG:Ljava/lang/String;

    const-string v3, "cn"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 170
    invoke-static {p0}, Lteam/rainfall/ctap/NumberShortenUtil;->getNumber_SHORT_ARMY(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 172
    :cond_15
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsGD:Lage/of/civilizations2/jakowski/lukasz/SettingsGD;

    iget v2, v2, Lage/of/civilizations2/jakowski/lukasz/SettingsGD;->SHORTEN_ARMY_OVER:I

    const-string v3, ""

    if-ge p0, v2, :cond_2f

    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 174
    :cond_2f
    const v2, 0xf4240

    const/4 v4, 0x0

    const/16 v5, 0x30

    const-string v6, "."

    if-ge p0, v2, :cond_ae

    .line 175
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    int-to-float v2, p0

    const/high16 v3, 0x447a0000  # 1000.0f

    div-float/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 178
    .local v1, "outValue":Ljava/lang/String;
    :try_start_4e
    invoke-virtual {v1, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v5, :cond_74

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    div-int/lit16 v3, p0, 0x3e8

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    invoke-virtual {v3, v0}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    :goto_6f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_92

    :cond_74
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x2

    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    invoke-virtual {v3, v0}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2
    :try_end_91
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4e .. :try_end_91} :catch_93

    goto :goto_6f

    :goto_92
    return-object v0

    .line 179
    :catch_93
    move-exception v2

    .line 180
    .local v2, "var3":Ljava/lang/IndexOutOfBoundsException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    div-int/lit16 v4, p0, 0x3e8

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    invoke-virtual {v4, v0}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 183
    .end local v1  # "outValue":Ljava/lang/String;
    .end local v2  # "var3":Ljava/lang/IndexOutOfBoundsException;
    :cond_ae
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    int-to-float v2, p0

    const v3, 0x49742400  # 1000000.0f

    div-float/2addr v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 186
    .local v0, "outValue":Ljava/lang/String;
    :try_start_c4
    invoke-virtual {v0, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v5, :cond_ea

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    div-int/lit16 v3, p0, 0x3e8

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    invoke-virtual {v3, v1}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    :goto_e5
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_108

    :cond_ea
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x2

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    invoke-virtual {v3, v1}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2
    :try_end_107
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_c4 .. :try_end_107} :catch_109

    goto :goto_e5

    :goto_108
    return-object v1

    .line 187
    :catch_109
    move-exception v2

    .line 188
    .local v2, "var4":Ljava/lang/IndexOutOfBoundsException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    div-int/lit16 v4, p0, 0x3e8

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    invoke-virtual {v4, v1}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static final loadFont(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 10
    .param p0, "sFont"  # Ljava/lang/String;
    .param p1, "charset"  # Ljava/lang/String;
    .param p2, "fontSize"  # I

    .line 15
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    int-to-float v0, v0

    .line 16
    .local v0, "texSize":F
    const v1, 0x3f2aaaab

    mul-float v1, v1, v0

    const/high16 v2, 0x44800000  # 1024.0f

    add-float/2addr v1, v2

    float-to-int v1, v1

    .line 17
    .local v1, "texSize2":I
    const/16 v2, 0x1000

    if-ge v1, v2, :cond_15

    .line 18
    const/16 v1, 0x1000

    .line 20
    :cond_15
    invoke-static {v1}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->setMaxTextureSize(I)V

    .line 22
    const/4 v2, 0x0

    .line 23
    .local v2, "generator":Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;
    if-gez p2, :cond_23

    .line 24
    sget v3, Lage/of/civilizations2/jakowski/lukasz/GameValues/GameValues;->DEFAULT_FONT_SIZE:I

    int-to-float v3, v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    mul-float v3, v3, v4

    float-to-int p2, v3

    .line 28
    :cond_23
    :try_start_23
    new-instance v3, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "game/fonts/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_3f} :catch_41

    move-object v2, v3

    .line 31
    goto :goto_4e

    .line 29
    :catch_41
    move-exception v3

    .line 30
    .local v3, "var5":Ljava/lang/Exception;
    new-instance v4, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;

    const-string v5, "game/fonts/rbold.ttf"

    invoke-static {v5}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    move-object v2, v4

    .line 33
    .end local v3  # "var5":Ljava/lang/Exception;
    :goto_4e
    new-instance v3, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;

    invoke-direct {v3}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;-><init>()V

    .line 34
    .local v3, "params":Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;
    iput-object p1, v3, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->characters:Ljava/lang/String;

    .line 35
    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->incremental:Z

    .line 36
    const/4 v5, 0x6

    invoke-static {p2, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, v3, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->size:I

    .line 37
    sget-object v5, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    iput-object v5, v3, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->color:Lcom/badlogic/gdx/graphics/Color;

    .line 38
    sget-object v5, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    iput-object v5, v3, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->minFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    .line 39
    sget-object v5, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    iput-object v5, v3, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->magFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    .line 40
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Ljava/util/List;

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->generateFont(Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;)Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ne v5, v4, :cond_93

    .line 42
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLay:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Ljava/util/List;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    const-string v6, "AyӏdZOP38901ERLj"

    invoke-virtual {v4, v5, v6}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)V

    .line 43
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLay:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    iget v4, v4, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->height:F

    float-to-int v4, v4

    sput v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->TEXT_HEIGHT_DEFAULT:I

    .line 46
    :cond_93
    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsGD:Lage/of/civilizations2/jakowski/lukasz/SettingsGD;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/SettingsGD;->updateCitiesFontScale()V

    .line 47
    return-void
.end method

.method public static final loadFontArmy()V
    .registers 6

    .line 50
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontArmy:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    if-eqz v0, :cond_c

    .line 51
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontArmy:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->dispose()V

    .line 52
    const/4 v0, 0x0

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontArmy:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    .line 55
    :cond_c
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    const-string v1, "fontArmy"

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 56
    .local v0, "sFont":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 57
    const-string v0, "rbold.ttf"

    .line 60
    :cond_1c
    const/4 v1, 0x0

    .line 63
    .local v1, "genaratorArmy":Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;
    :try_start_1d
    new-instance v2, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "game/fonts/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V
    :try_end_39
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_1d .. :try_end_39} :catch_3b

    move-object v1, v2

    .line 66
    goto :goto_48

    .line 64
    :catch_3b
    move-exception v2

    .line 65
    .local v2, "var3":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    new-instance v3, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;

    const-string v4, "game/fonts/rbold.ttf"

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    move-object v1, v3

    .line 68
    .end local v2  # "var3":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    :goto_48
    new-instance v2, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;

    invoke-direct {v2}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;-><init>()V

    .line 69
    .local v2, "paramsArmy":Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsGD:Lage/of/civilizations2/jakowski/lukasz/SettingsGD;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/SettingsGD;->FONT_ARMY_SIZEX:I

    const/4 v4, 0x6

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v2, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->size:I

    .line 70
    sget-object v3, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    iput-object v3, v2, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->color:Lcom/badlogic/gdx/graphics/Color;

    .line 71
    sget-object v3, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    iput-object v3, v2, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->minFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    .line 72
    sget-object v3, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    iput-object v3, v2, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->magFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    .line 73
    const-string v3, "0123456789+-.,%?!ABCDEFGHIJKLMNOPQRSTUVWXYZ百千万亿"

    iput-object v3, v2, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->characters:Ljava/lang/String;

    .line 74
    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->generateFont(Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;)Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    move-result-object v3

    sput-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontArmy:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    .line 75
    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->dispose()V

    .line 76
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLay:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontArmy:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    const-string v5, "-+1234567890"

    invoke-virtual {v3, v4, v5}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)V

    .line 77
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLay:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    iget v3, v3, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->height:F

    float-to-int v3, v3

    sput v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->ARMY_HEIGHT:I

    .line 78
    return-void
.end method

.method public static final loadFontBorder()V
    .registers 8

    .line 81
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontBorder:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    if-eqz v0, :cond_c

    .line 82
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontBorder:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->dispose()V

    .line 83
    const/4 v0, 0x0

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontBorder:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    .line 86
    :cond_c
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    const-string v1, "fontCivNames"

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 87
    .local v0, "sFont":Ljava/lang/String;
    const-string v1, "font2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 88
    const-string v0, "rbold.ttf"

    .line 91
    :cond_1e
    const/4 v1, 0x0

    .line 94
    .local v1, "genarator":Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;
    :try_start_1f
    new-instance v2, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "game/fonts/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V
    :try_end_3b
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_1f .. :try_end_3b} :catch_3d

    move-object v1, v2

    .line 97
    goto :goto_4a

    .line 95
    :catch_3d
    move-exception v2

    .line 96
    .local v2, "var3":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    new-instance v3, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;

    const-string v4, "game/fonts/rbold.ttf"

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    move-object v1, v3

    .line 99
    .end local v2  # "var3":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    :goto_4a
    new-instance v2, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;

    invoke-direct {v2}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;-><init>()V

    .line 100
    .local v2, "params":Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;
    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->incremental:Z

    .line 101
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    const-string v4, "charset"

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->characters:Ljava/lang/String;

    .line 102
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsGD:Lage/of/civilizations2/jakowski/lukasz/SettingsGD;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/SettingsGD;->FONT_BORDER_SIZEX:I

    iput v3, v2, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->size:I

    .line 103
    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsGD:Lage/of/civilizations2/jakowski/lukasz/SettingsGD;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/SettingsGD;->civNamesFontColor:Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;->getR()F

    move-result v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsGD:Lage/of/civilizations2/jakowski/lukasz/SettingsGD;

    iget-object v5, v5, Lage/of/civilizations2/jakowski/lukasz/SettingsGD;->civNamesFontColor:Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;->getG()F

    move-result v5

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsGD:Lage/of/civilizations2/jakowski/lukasz/SettingsGD;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/SettingsGD;->civNamesFontColor:Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;->getB()F

    move-result v6

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsGD:Lage/of/civilizations2/jakowski/lukasz/SettingsGD;

    iget v7, v7, Lage/of/civilizations2/jakowski/lukasz/SettingsGD;->civNamesFontColor_ALPHA:F

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    iput-object v3, v2, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->color:Lcom/badlogic/gdx/graphics/Color;

    .line 104
    sget-object v3, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    iput-object v3, v2, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->minFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    .line 105
    sget-object v3, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    iput-object v3, v2, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->magFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    .line 106
    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsGD:Lage/of/civilizations2/jakowski/lukasz/SettingsGD;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/SettingsGD;->civNamesFontColorBorder:Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;->getR()F

    move-result v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsGD:Lage/of/civilizations2/jakowski/lukasz/SettingsGD;

    iget-object v5, v5, Lage/of/civilizations2/jakowski/lukasz/SettingsGD;->civNamesFontColorBorder:Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;->getG()F

    move-result v5

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsGD:Lage/of/civilizations2/jakowski/lukasz/SettingsGD;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/SettingsGD;->civNamesFontColorBorder:Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;->getB()F

    move-result v6

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsGD:Lage/of/civilizations2/jakowski/lukasz/SettingsGD;

    iget v7, v7, Lage/of/civilizations2/jakowski/lukasz/SettingsGD;->civNamesFontColorBorder_ALPHA:F

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    iput-object v3, v2, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->borderColor:Lcom/badlogic/gdx/graphics/Color;

    .line 107
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsGD:Lage/of/civilizations2/jakowski/lukasz/SettingsGD;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/SettingsGD;->FONT_BORDER_WIDTH:I

    int-to-float v3, v3

    iput v3, v2, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->borderWidth:F

    .line 108
    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->generateFont(Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;)Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    move-result-object v3

    sput-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontBorder:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    .line 110
    invoke-static {}, Lteam/rainfall/ctap/MixinCFG;->loadFontBorder2()V

    .line 111
    return-void
.end method

.method public static final loadFontBorder2()V
    .registers 8

    .line 114
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontBorder2:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    if-eqz v0, :cond_c

    .line 115
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontBorder2:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->dispose()V

    .line 116
    const/4 v0, 0x0

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontBorder2:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    .line 119
    :cond_c
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    const-string v1, "fontCivNames"

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 120
    .local v0, "sFont":Ljava/lang/String;
    const-string v1, "font2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 121
    const-string v0, "rbold.ttf"

    .line 124
    :cond_1e
    const/4 v1, 0x0

    .line 127
    .local v1, "genarator":Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;
    :try_start_1f
    new-instance v2, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "game/fonts/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V
    :try_end_3b
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_1f .. :try_end_3b} :catch_3d

    move-object v1, v2

    .line 130
    goto :goto_4a

    .line 128
    :catch_3d
    move-exception v2

    .line 129
    .local v2, "var3":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    new-instance v3, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;

    const-string v4, "game/fonts/rbold.ttf"

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    move-object v1, v3

    .line 131
    .end local v2  # "var3":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    :goto_4a
    new-instance v2, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;

    invoke-direct {v2}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;-><init>()V

    .line 132
    .local v2, "params":Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;
    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->incremental:Z

    .line 133
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    const-string v4, "charset"

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->characters:Ljava/lang/String;

    .line 134
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsGD:Lage/of/civilizations2/jakowski/lukasz/SettingsGD;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/SettingsGD;->FONT_BORDER_SIZEX:I

    iput v3, v2, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->size:I

    .line 135
    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsGD:Lage/of/civilizations2/jakowski/lukasz/SettingsGD;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/SettingsGD;->civNamesFontColor:Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;->getR()F

    move-result v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsGD:Lage/of/civilizations2/jakowski/lukasz/SettingsGD;

    iget-object v5, v5, Lage/of/civilizations2/jakowski/lukasz/SettingsGD;->civNamesFontColor:Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;->getG()F

    move-result v5

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsGD:Lage/of/civilizations2/jakowski/lukasz/SettingsGD;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/SettingsGD;->civNamesFontColor:Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;->getB()F

    move-result v6

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsGD:Lage/of/civilizations2/jakowski/lukasz/SettingsGD;

    iget v7, v7, Lage/of/civilizations2/jakowski/lukasz/SettingsGD;->civNamesFontColor_ALPHA:F

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    iput-object v3, v2, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->color:Lcom/badlogic/gdx/graphics/Color;

    .line 136
    sget-object v3, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    iput-object v3, v2, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->minFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    .line 137
    sget-object v3, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    iput-object v3, v2, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->magFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    .line 138
    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsGD:Lage/of/civilizations2/jakowski/lukasz/SettingsGD;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/SettingsGD;->civNamesFontColorBorder:Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;->getR()F

    move-result v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsGD:Lage/of/civilizations2/jakowski/lukasz/SettingsGD;

    iget-object v5, v5, Lage/of/civilizations2/jakowski/lukasz/SettingsGD;->civNamesFontColorBorder:Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;->getG()F

    move-result v5

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsGD:Lage/of/civilizations2/jakowski/lukasz/SettingsGD;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/SettingsGD;->civNamesFontColorBorder:Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Color_GameData;->getB()F

    move-result v6

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsGD:Lage/of/civilizations2/jakowski/lukasz/SettingsGD;

    iget v7, v7, Lage/of/civilizations2/jakowski/lukasz/SettingsGD;->civNamesFontColorBorder_ALPHA:F

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    iput-object v3, v2, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->borderColor:Lcom/badlogic/gdx/graphics/Color;

    .line 139
    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsGD:Lage/of/civilizations2/jakowski/lukasz/SettingsGD;

    iget v3, v3, Lage/of/civilizations2/jakowski/lukasz/SettingsGD;->FONT_BORDER_WIDTH:I

    int-to-float v3, v3

    iput v3, v2, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;->borderWidth:F

    .line 140
    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator;->generateFont(Lcom/badlogic/gdx/graphics/g2d/freetype/FreeTypeFontGenerator$FreeTypeFontParameter;)Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    move-result-object v3

    sput-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontBorder2:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    .line 142
    return-void
.end method
