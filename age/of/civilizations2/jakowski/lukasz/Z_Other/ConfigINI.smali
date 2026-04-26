.class public Lage/of/civilizations2/jakowski/lukasz/Z_Other/ConfigINI;
.super Ljava/lang/Object;
.source "ConfigINI.java"


# static fields
.field public static fullscreen:Z

.field public static iHeight:I

.field public static iSamples:I

.field public static iUIScale:I

.field public static iWidth:I

.field public static landscape:Z

.field public static vSync:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 16
    const/4 v0, -0x1

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ConfigINI;->iWidth:I

    .line 17
    sput v0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ConfigINI;->iHeight:I

    .line 18
    const/4 v1, 0x1

    sput-boolean v1, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ConfigINI;->fullscreen:Z

    .line 20
    sput v0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ConfigINI;->iSamples:I

    .line 21
    const/4 v2, 0x0

    sput-boolean v2, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ConfigINI;->vSync:Z

    .line 23
    sput-boolean v1, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ConfigINI;->landscape:Z

    .line 24
    sput v0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ConfigINI;->iUIScale:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final readConfig()V
    .registers 9

    .line 30
    :try_start_0
    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->IS_MAC:Z
    :try_end_2
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_0 .. :try_end_2} :catch_ce

    const-string v1, "settings/config.txt"

    if-eqz v0, :cond_d

    .line 31
    :try_start_6
    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Files;->external(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .local v0, "file":Lcom/badlogic/gdx/files/FileHandle;
    goto :goto_13

    .line 33
    .end local v0  # "file":Lcom/badlogic/gdx/files/FileHandle;
    :cond_d
    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 36
    .restart local v0  # "file":Lcom/badlogic/gdx/files/FileHandle;
    :goto_13
    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v1

    .line 37
    .local v1, "tempTags":Ljava/lang/String;
    const-string v2, "\n"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 39
    .local v2, "tSplited":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_26
    array-length v4, v2

    if-ge v3, v4, :cond_cd

    .line 40
    aget-object v4, v2, v3

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4
    :try_end_31
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_6 .. :try_end_31} :catch_ce

    .line 43
    .local v4, "tempR":[Ljava/lang/String;
    const/4 v5, 0x0

    const/4 v6, 0x1

    :try_start_33
    aget-object v7, v4, v5

    const-string v8, "FULLSCREEN"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_47

    .line 44
    aget-object v7, v4, v6

    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v7

    sput-boolean v7, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ConfigINI;->fullscreen:Z

    goto/16 :goto_b8

    .line 46
    :cond_47
    aget-object v7, v4, v5

    const-string v8, "WIDTH"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5a

    .line 47
    aget-object v7, v4, v6

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    sput v7, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ConfigINI;->iWidth:I

    goto :goto_b8

    .line 49
    :cond_5a
    aget-object v7, v4, v5

    const-string v8, "HEIGHT"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6d

    .line 50
    aget-object v7, v4, v6

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    sput v7, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ConfigINI;->iHeight:I

    goto :goto_b8

    .line 52
    :cond_6d
    aget-object v7, v4, v5

    const-string v8, "ANTIALIASING"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_80

    .line 53
    aget-object v7, v4, v6

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    sput v7, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ConfigINI;->iSamples:I

    goto :goto_b8

    .line 55
    :cond_80
    aget-object v7, v4, v5

    const-string v8, "VSYNC"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_93

    .line 56
    aget-object v7, v4, v6

    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v7

    sput-boolean v7, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ConfigINI;->vSync:Z

    goto :goto_b8

    .line 58
    :cond_93
    aget-object v7, v4, v5

    const-string v8, "LANDSCAPE"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a6

    .line 59
    aget-object v7, v4, v6

    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v7

    sput-boolean v7, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ConfigINI;->landscape:Z

    goto :goto_b8

    .line 61
    :cond_a6
    aget-object v7, v4, v5

    const-string v8, "UISCALE"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b8

    .line 62
    aget-object v7, v4, v6

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    sput v7, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ConfigINI;->iUIScale:I
    :try_end_b8
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_b8} :catch_bd
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_33 .. :try_end_b8} :catch_ce

    .line 74
    :cond_b8
    :goto_b8
    nop

    .line 39
    .end local v4  # "tempR":[Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_26

    .line 64
    .restart local v4  # "tempR":[Ljava/lang/String;
    :catch_bd
    move-exception v7

    .line 65
    .local v7, "ex":Ljava/lang/Exception;
    const/4 v8, -0x1

    :try_start_bf
    sput v8, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ConfigINI;->iWidth:I

    .line 66
    sput v8, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ConfigINI;->iHeight:I

    .line 67
    sput-boolean v6, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ConfigINI;->fullscreen:Z

    .line 69
    sput v8, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ConfigINI;->iSamples:I

    .line 70
    sput-boolean v5, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ConfigINI;->vSync:Z

    .line 71
    sput-boolean v6, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ConfigINI;->landscape:Z

    .line 72
    sput v8, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ConfigINI;->iUIScale:I
    :try_end_cd
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_bf .. :try_end_cd} :catch_ce

    .line 79
    .end local v0  # "file":Lcom/badlogic/gdx/files/FileHandle;
    .end local v1  # "tempTags":Ljava/lang/String;
    .end local v2  # "tSplited":[Ljava/lang/String;
    .end local v3  # "i":I
    .end local v4  # "tempR":[Ljava/lang/String;
    .end local v7  # "ex":Ljava/lang/Exception;
    :cond_cd
    goto :goto_cf

    .line 77
    :catch_ce
    move-exception v0

    .line 80
    :goto_cf
    return-void
.end method

.method public static final saveConfig()V
    .registers 5

    .line 85
    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->IS_MAC:Z

    const-string v1, "settings/config.txt"

    if-eqz v0, :cond_d

    .line 86
    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Files;->external(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .local v0, "fileSave":Lcom/badlogic/gdx/files/FileHandle;
    goto :goto_13

    .line 88
    .end local v0  # "fileSave":Lcom/badlogic/gdx/files/FileHandle;
    :cond_d
    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 93
    .restart local v0  # "fileSave":Lcom/badlogic/gdx/files/FileHandle;
    :goto_13
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FULLSCREEN="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ConfigINI;->fullscreen:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Lcom/badlogic/gdx/files/FileHandle;->writeString(Ljava/lang/String;Z)V

    .line 94
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WIDTH="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ConfigINI;->iWidth:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Lcom/badlogic/gdx/files/FileHandle;->writeString(Ljava/lang/String;Z)V

    .line 95
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HEIGHT="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ConfigINI;->iHeight:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/badlogic/gdx/files/FileHandle;->writeString(Ljava/lang/String;Z)V

    .line 96
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ANTIALIASING="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ConfigINI;->iSamples:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/badlogic/gdx/files/FileHandle;->writeString(Ljava/lang/String;Z)V

    .line 97
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "VSYNC="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v4, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ConfigINI;->vSync:Z

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/badlogic/gdx/files/FileHandle;->writeString(Ljava/lang/String;Z)V

    .line 98
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LANDSCAPE="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v4, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ConfigINI;->landscape:Z

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/badlogic/gdx/files/FileHandle;->writeString(Ljava/lang/String;Z)V

    .line 99
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UISCALE="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ConfigINI;->iUIScale:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/badlogic/gdx/files/FileHandle;->writeString(Ljava/lang/String;Z)V

    .line 100
    return-void
.end method
