.class public Lcom/badlogic/gdx/backends/android/AndroidPreferences;
.super Ljava/lang/Object;
.source "AndroidPreferences.java"

# interfaces
.implements Lcom/badlogic/gdx/Preferences;


# instance fields
.field editor:Landroid/content/SharedPreferences$Editor;

.field sharedPrefs:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/SharedPreferences;)V
    .registers 2
    .param p1, "preferences"  # Landroid/content/SharedPreferences;

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/badlogic/gdx/backends/android/AndroidPreferences;->sharedPrefs:Landroid/content/SharedPreferences;

    .line 33
    return-void
.end method

.method private edit()V
    .registers 2

    .line 164
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidPreferences;->editor:Landroid/content/SharedPreferences$Editor;

    if-nez v0, :cond_c

    .line 165
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidPreferences;->sharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidPreferences;->editor:Landroid/content/SharedPreferences$Editor;

    .line 167
    :cond_c
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    .line 145
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/AndroidPreferences;->edit()V

    .line 146
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidPreferences;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 147
    return-void
.end method

.method public contains(Ljava/lang/String;)Z
    .registers 3
    .param p1, "key"  # Ljava/lang/String;

    .line 140
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidPreferences;->sharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public flush()V
    .registers 2

    .line 151
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidPreferences;->editor:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_c

    .line 152
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidPreferences;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 153
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidPreferences;->editor:Landroid/content/SharedPreferences$Editor;

    .line 155
    :cond_c
    return-void
.end method

.method public get()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    .line 135
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidPreferences;->sharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getBoolean(Ljava/lang/String;)Z
    .registers 4
    .param p1, "key"  # Ljava/lang/String;

    .line 85
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidPreferences;->sharedPrefs:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .registers 4
    .param p1, "key"  # Ljava/lang/String;
    .param p2, "defValue"  # Z

    .line 110
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidPreferences;->sharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getFloat(Ljava/lang/String;)F
    .registers 4
    .param p1, "key"  # Ljava/lang/String;

    .line 100
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidPreferences;->sharedPrefs:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public getFloat(Ljava/lang/String;F)F
    .registers 4
    .param p1, "key"  # Ljava/lang/String;
    .param p2, "defValue"  # F

    .line 125
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidPreferences;->sharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public getInteger(Ljava/lang/String;)I
    .registers 4
    .param p1, "key"  # Ljava/lang/String;

    .line 90
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidPreferences;->sharedPrefs:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getInteger(Ljava/lang/String;I)I
    .registers 4
    .param p1, "key"  # Ljava/lang/String;
    .param p2, "defValue"  # I

    .line 115
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidPreferences;->sharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getLong(Ljava/lang/String;)J
    .registers 5
    .param p1, "key"  # Ljava/lang/String;

    .line 95
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidPreferences;->sharedPrefs:Landroid/content/SharedPreferences;

    const-wide/16 v1, 0x0

    invoke-interface {v0, p1, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLong(Ljava/lang/String;J)J
    .registers 6
    .param p1, "key"  # Ljava/lang/String;
    .param p2, "defValue"  # J

    .line 120
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidPreferences;->sharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "key"  # Ljava/lang/String;

    .line 105
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidPreferences;->sharedPrefs:Landroid/content/SharedPreferences;

    const-string v1, ""

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "key"  # Ljava/lang/String;
    .param p2, "defValue"  # Ljava/lang/String;

    .line 130
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidPreferences;->sharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/util/Map;)Lcom/badlogic/gdx/Preferences;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)",
            "Lcom/badlogic/gdx/Preferences;"
        }
    .end annotation

    .line 72
    .local p1, "vals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/AndroidPreferences;->edit()V

    .line 73
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 74
    .local v1, "val":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/Boolean;

    if-eqz v2, :cond_32

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/badlogic/gdx/backends/android/AndroidPreferences;->putBoolean(Ljava/lang/String;Z)Lcom/badlogic/gdx/Preferences;

    .line 75
    :cond_32
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/Integer;

    if-eqz v2, :cond_4d

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/badlogic/gdx/backends/android/AndroidPreferences;->putInteger(Ljava/lang/String;I)Lcom/badlogic/gdx/Preferences;

    .line 76
    :cond_4d
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/Long;

    if-eqz v2, :cond_68

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {p0, v2, v3, v4}, Lcom/badlogic/gdx/backends/android/AndroidPreferences;->putLong(Ljava/lang/String;J)Lcom/badlogic/gdx/Preferences;

    .line 77
    :cond_68
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/String;

    if-eqz v2, :cond_7f

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/badlogic/gdx/backends/android/AndroidPreferences;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/badlogic/gdx/Preferences;

    .line 78
    :cond_7f
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/Float;

    if-eqz v2, :cond_9a

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/badlogic/gdx/backends/android/AndroidPreferences;->putFloat(Ljava/lang/String;F)Lcom/badlogic/gdx/Preferences;

    .line 79
    .end local v1  # "val":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    :cond_9a
    goto/16 :goto_b

    .line 80
    :cond_9c
    return-object p0
.end method

.method public putBoolean(Ljava/lang/String;Z)Lcom/badlogic/gdx/Preferences;
    .registers 4
    .param p1, "key"  # Ljava/lang/String;
    .param p2, "val"  # Z

    .line 37
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/AndroidPreferences;->edit()V

    .line 38
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidPreferences;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 39
    return-object p0
.end method

.method public putFloat(Ljava/lang/String;F)Lcom/badlogic/gdx/Preferences;
    .registers 4
    .param p1, "key"  # Ljava/lang/String;
    .param p2, "val"  # F

    .line 58
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/AndroidPreferences;->edit()V

    .line 59
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidPreferences;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 60
    return-object p0
.end method

.method public putInteger(Ljava/lang/String;I)Lcom/badlogic/gdx/Preferences;
    .registers 4
    .param p1, "key"  # Ljava/lang/String;
    .param p2, "val"  # I

    .line 44
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/AndroidPreferences;->edit()V

    .line 45
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidPreferences;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 46
    return-object p0
.end method

.method public putLong(Ljava/lang/String;J)Lcom/badlogic/gdx/Preferences;
    .registers 5
    .param p1, "key"  # Ljava/lang/String;
    .param p2, "val"  # J

    .line 51
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/AndroidPreferences;->edit()V

    .line 52
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidPreferences;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 53
    return-object p0
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)Lcom/badlogic/gdx/Preferences;
    .registers 4
    .param p1, "key"  # Ljava/lang/String;
    .param p2, "val"  # Ljava/lang/String;

    .line 65
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/AndroidPreferences;->edit()V

    .line 66
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidPreferences;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 67
    return-object p0
.end method

.method public remove(Ljava/lang/String;)V
    .registers 3
    .param p1, "key"  # Ljava/lang/String;

    .line 159
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/AndroidPreferences;->edit()V

    .line 160
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidPreferences;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 161
    return-void
.end method
