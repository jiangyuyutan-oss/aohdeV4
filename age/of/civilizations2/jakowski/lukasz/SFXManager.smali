.class public Lage/of/civilizations2/jakowski/lukasz/SFXManager;
.super Ljava/lang/Object;
.source "SFXManager.java"


# static fields
.field private static final CONSOLE_MUSIC_TITLE:Ljava/lang/String;

.field public static PERC_VOLUME_KEYBOARD:F

.field public static PERC_VOLUME_SELECT_PROVINCE:F

.field public static RADIO_LIST_FILE:Ljava/lang/String;

.field public static RADIO_PATH:Ljava/lang/String;

.field public static RADIO_STATIONS_FILE:Ljava/lang/String;

.field public static SFX_ACTION_MOVE:I

.field public static SFX_ASSIMILATE:I

.field public static SFX_BUILD:I

.field public static SFX_CLICK:I

.field public static SFX_CLICK2:I

.field public static SFX_CLICK3:I

.field public static SFX_CROW:I

.field public static SFX_DIPLOMACY:I

.field public static SFX_EVENT:I

.field public static SFX_FARM:I

.field public static SFX_GOLD:I

.field public static SFX_LIBRARY:I

.field public static SFX_MOVE_ARMY:I

.field public static SFX_MOVE_ARMY2:I

.field public static SFX_MOVE_ARMY_0:I

.field public static SFX_MOVE_ARMY_1:I

.field public static SFX_MOVE_ARMY_2:I

.field public static SFX_MOVE_ARMY_3:I

.field public static SFX_MOVE_ARMY_4:I

.field public static SFX_MOVE_REGROUP:I

.field public static SFX_NUKE:I

.field public static SFX_PLUNDER:I

.field public static SFX_PORT:I

.field public static SFX_PROVINCE:I

.field public static SFX_RANDOM:I

.field public static SFX_RECRUIT:I

.field public static SFX_SEND:I

.field public static SFX_SEND2:I

.field public static SFX_SEND3:I

.field public static SFX_SEND4:I

.field public static SFX_START:I

.field public static SFX_SUPPLY:I

.field public static SFX_TECHNOLOGY:I

.field public static SFX_WAR:I

.field public static SFX_WAR2:I

.field public static SFX_WORKSHOP:I

.field private static final START_MUSIC:Ljava/lang/String;

.field public static isPlayingConsoleMusic:Z


# instance fields
.field private currentMusic:Lcom/badlogic/gdx/audio/Music;

.field public iCurrentMusicID:I

.field private lSounds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/badlogic/gdx/audio/Sound;",
            ">;"
        }
    .end annotation
.end field

.field public lStations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public lTitles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private masterVolume:F

.field private musicVolume:F

.field private soundsVolume:F

.field public stationID:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Scheming_Weasel."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->isIOS()Z

    move-result v1

    const-string v2, "mp3"

    const-string v3, "ogg"

    if-eqz v1, :cond_17

    move-object v1, v2

    goto :goto_18

    :cond_17
    move-object v1, v3

    :goto_18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->CONSOLE_MUSIC_TITLE:Ljava/lang/String;

    .line 26
    const/4 v0, 0x0

    sput-boolean v0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->isPlayingConsoleMusic:Z

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Impact_Allegretto."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->isIOS()Z

    move-result v1

    if-eqz v1, :cond_37

    goto :goto_38

    :cond_37
    move-object v2, v3

    :goto_38
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->START_MUSIC:Ljava/lang/String;

    .line 98
    const v0, 0x3f733333  # 0.95f

    sput v0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->PERC_VOLUME_SELECT_PROVINCE:F

    .line 99
    const v0, 0x3f666666  # 0.9f

    sput v0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->PERC_VOLUME_KEYBOARD:F

    .line 103
    const-string v0, "radio/"

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->RADIO_PATH:Ljava/lang/String;

    .line 104
    const-string v0, "stations.txt"

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->RADIO_STATIONS_FILE:Ljava/lang/String;

    .line 105
    const-string v0, "list.txt"

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->RADIO_LIST_FILE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 18

    .line 107
    move-object/from16 v1, p0

    const-string v2, "music/Age_of_Civilizations"

    const-string v3, ";"

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput v0, v1, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->stationID:I

    .line 33
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v1, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->lStations:Ljava/util/List;

    .line 34
    const/4 v4, 0x0

    iput-object v4, v1, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->currentMusic:Lcom/badlogic/gdx/audio/Music;

    .line 35
    const v4, 0x3ecccccd  # 0.4f

    iput v4, v1, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->musicVolume:F

    .line 37
    iput v0, v1, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->iCurrentMusicID:I

    .line 42
    const v0, 0x3f0ccccd  # 0.55f

    iput v0, v1, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->soundsVolume:F

    .line 44
    const/4 v0, 0x0

    iput v0, v1, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->masterVolume:F

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->lTitles:Ljava/util/List;

    .line 109
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->lSounds:Ljava/util/List;

    .line 111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v0

    .line 113
    .local v4, "menuElements":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "click."

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->isIOS()Z

    move-result v5

    const-string v6, "mp3"

    const-string v7, "ogg"

    if-eqz v5, :cond_50

    move-object v5, v6

    goto :goto_51

    :cond_50
    move-object v5, v7

    :goto_51
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->addSound(Ljava/lang/String;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->SFX_CLICK:I

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "click2."

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->isIOS()Z

    move-result v5

    if-eqz v5, :cond_72

    move-object v5, v6

    goto :goto_73

    :cond_72
    move-object v5, v7

    :goto_73
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->addSound(Ljava/lang/String;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->SFX_CLICK2:I

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "click3."

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->isIOS()Z

    move-result v5

    if-eqz v5, :cond_94

    move-object v5, v6

    goto :goto_95

    :cond_94
    move-object v5, v7

    :goto_95
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->addSound(Ljava/lang/String;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->SFX_CLICK3:I

    .line 116
    sget v0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->SFX_CLICK:I

    sput v0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->SFX_PROVINCE:I

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "nuke."

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->isIOS()Z

    move-result v5

    if-eqz v5, :cond_ba

    move-object v5, v6

    goto :goto_bb

    :cond_ba
    move-object v5, v7

    :goto_bb
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->addSound(Ljava/lang/String;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->SFX_NUKE:I

    .line 120
    iget-object v0, v1, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->lStations:Ljava/util/List;

    const-string v5, "Age of History 2: Definitive Edition"

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    :try_start_d0
    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 124
    .local v0, "tempFileT":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v5

    .line 125
    .local v5, "tempT":Ljava/lang/String;
    invoke-virtual {v5, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 127
    .local v8, "tagsSPLITED":[Ljava/lang/String;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 129
    .local v9, "titlesDefault":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_e2
    array-length v11, v8

    if-ge v10, v11, :cond_ed

    .line 130
    aget-object v11, v8, v10

    invoke-interface {v9, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    add-int/lit8 v10, v10, 0x1

    goto :goto_e2

    .line 132
    .end local v10  # "i":I
    :cond_ed
    iget-object v10, v1, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->lTitles:Ljava/util/List;

    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_f2
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_d0 .. :try_end_f2} :catch_f4

    .line 149
    nop

    .end local v0  # "tempFileT":Lcom/badlogic/gdx/files/FileHandle;
    .end local v5  # "tempT":Ljava/lang/String;
    .end local v8  # "tagsSPLITED":[Ljava/lang/String;
    .end local v9  # "titlesDefault":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_11d

    .line 133
    :catch_f4
    move-exception v0

    move-object v5, v0

    .line 135
    .local v5, "ex":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    :try_start_f6
    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    invoke-interface {v0, v2}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 136
    .restart local v0  # "tempFileT":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v2

    .line 137
    .local v2, "tempT":Ljava/lang/String;
    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 139
    .restart local v8  # "tagsSPLITED":[Ljava/lang/String;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 141
    .restart local v9  # "titlesDefault":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v10, 0x0

    .restart local v10  # "i":I
    :goto_10a
    array-length v11, v8

    if-ge v10, v11, :cond_115

    .line 142
    aget-object v11, v8, v10

    invoke-interface {v9, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    add-int/lit8 v10, v10, 0x1

    goto :goto_10a

    .line 145
    .end local v10  # "i":I
    :cond_115
    iget-object v10, v1, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->lTitles:Ljava/util/List;

    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_11a
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_f6 .. :try_end_11a} :catch_11c

    .line 148
    nop

    .end local v0  # "tempFileT":Lcom/badlogic/gdx/files/FileHandle;
    .end local v2  # "tempT":Ljava/lang/String;
    .end local v8  # "tagsSPLITED":[Ljava/lang/String;
    .end local v9  # "titlesDefault":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_11d

    .line 146
    :catch_11c
    move-exception v0

    .line 153
    .end local v5  # "ex":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    :goto_11d
    const/4 v0, 0x0

    move v2, v0

    .local v2, "i":I
    :goto_11f
    :try_start_11f
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->sUFS:I
    :try_end_121
    .catch Ljava/lang/Exception; {:try_start_11f .. :try_end_121} :catch_450

    const-string v5, "/"

    if-ge v2, v0, :cond_327

    .line 154
    :try_start_125
    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->sUF:Ljava/util/List;

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->RADIO_PATH:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->RADIO_STATIONS_FILE:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v8}, Lcom/badlogic/gdx/Files;->external(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v0

    if-eqz v0, :cond_225

    .line 155
    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->sUF:Ljava/util/List;

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->RADIO_PATH:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->RADIO_STATIONS_FILE:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v8}, Lcom/badlogic/gdx/Files;->external(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    move-object v8, v0

    .line 156
    .local v8, "tempFileT2":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual {v8}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v0

    move-object v9, v0

    .line 157
    .local v9, "tempT2":Ljava/lang/String;
    invoke-virtual {v9, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    move-object v10, v0

    .line 159
    .local v10, "stationsSplit":[Ljava/lang/String;
    const/4 v0, 0x0

    move v11, v0

    .local v11, "z":I
    :goto_186
    array-length v0, v10

    if-ge v11, v0, :cond_223

    .line 160
    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->sUF:Ljava/util/List;

    invoke-interface {v13, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->RADIO_PATH:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    aget-object v13, v10, v11

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->RADIO_LIST_FILE:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v0, v12}, Lcom/badlogic/gdx/Files;->external(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v0
    :try_end_1be
    .catch Ljava/lang/Exception; {:try_start_125 .. :try_end_1be} :catch_450

    if-eqz v0, :cond_21f

    .line 162
    :try_start_1c0
    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->sUF:Ljava/util/List;

    invoke-interface {v13, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->RADIO_PATH:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    aget-object v13, v10, v11

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->RADIO_LIST_FILE:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v0, v12}, Lcom/badlogic/gdx/Files;->external(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 163
    .restart local v0  # "tempFileT":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v12

    .line 164
    .local v12, "tempT":Ljava/lang/String;
    invoke-virtual {v12, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 166
    .local v13, "tagsSPLITED":[Ljava/lang/String;
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 168
    .local v14, "titlesStation":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v15, 0x0

    .local v15, "a":I
    :goto_1ff
    move-object/from16 v16, v0

    .end local v0  # "tempFileT":Lcom/badlogic/gdx/files/FileHandle;
    .local v16, "tempFileT":Lcom/badlogic/gdx/files/FileHandle;
    array-length v0, v13

    if-ge v15, v0, :cond_20e

    .line 169
    aget-object v0, v13, v15

    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 168
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, v16

    goto :goto_1ff

    .line 172
    .end local v15  # "a":I
    :cond_20e
    iget-object v0, v1, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->lTitles:Ljava/util/List;

    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    iget-object v0, v1, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->lStations:Ljava/util/List;

    aget-object v15, v10, v11

    invoke-interface {v0, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_21a
    .catch Ljava/lang/Exception; {:try_start_1c0 .. :try_end_21a} :catch_21b

    .line 176
    .end local v12  # "tempT":Ljava/lang/String;
    .end local v13  # "tagsSPLITED":[Ljava/lang/String;
    .end local v14  # "titlesStation":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v16  # "tempFileT":Lcom/badlogic/gdx/files/FileHandle;
    goto :goto_21f

    .line 174
    :catch_21b
    move-exception v0

    .line 175
    .local v0, "exr":Ljava/lang/Exception;
    :try_start_21c
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 159
    .end local v0  # "exr":Ljava/lang/Exception;
    :cond_21f
    :goto_21f
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_186

    .line 179
    .end local v8  # "tempFileT2":Lcom/badlogic/gdx/files/FileHandle;
    .end local v9  # "tempT2":Ljava/lang/String;
    .end local v10  # "stationsSplit":[Ljava/lang/String;
    .end local v11  # "z":I
    :cond_223
    goto/16 :goto_323

    .line 180
    :cond_225
    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->sUF:Ljava/util/List;

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->RADIO_PATH:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->RADIO_STATIONS_FILE:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v8}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v0

    if-eqz v0, :cond_323

    .line 181
    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->sUF:Ljava/util/List;

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->RADIO_PATH:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->RADIO_STATIONS_FILE:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v8}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    move-object v8, v0

    .line 182
    .restart local v8  # "tempFileT2":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual {v8}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v0

    move-object v9, v0

    .line 183
    .restart local v9  # "tempT2":Ljava/lang/String;
    invoke-virtual {v9, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    move-object v10, v0

    .line 185
    .restart local v10  # "stationsSplit":[Ljava/lang/String;
    const/4 v0, 0x0

    move v11, v0

    .restart local v11  # "z":I
    :goto_286
    array-length v0, v10

    if-ge v11, v0, :cond_323

    .line 186
    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->sUF:Ljava/util/List;

    invoke-interface {v13, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->RADIO_PATH:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    aget-object v13, v10, v11

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->RADIO_LIST_FILE:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v0, v12}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v0
    :try_end_2be
    .catch Ljava/lang/Exception; {:try_start_21c .. :try_end_2be} :catch_450

    if-eqz v0, :cond_31f

    .line 188
    :try_start_2c0
    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->sUF:Ljava/util/List;

    invoke-interface {v13, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->RADIO_PATH:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    aget-object v13, v10, v11

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->RADIO_LIST_FILE:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v0, v12}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 189
    .local v0, "tempFileT":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v12

    .line 190
    .restart local v12  # "tempT":Ljava/lang/String;
    invoke-virtual {v12, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 192
    .restart local v13  # "tagsSPLITED":[Ljava/lang/String;
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 194
    .restart local v14  # "titlesStation":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v15, 0x0

    .restart local v15  # "a":I
    :goto_2ff
    move-object/from16 v16, v0

    .end local v0  # "tempFileT":Lcom/badlogic/gdx/files/FileHandle;
    .restart local v16  # "tempFileT":Lcom/badlogic/gdx/files/FileHandle;
    array-length v0, v13

    if-ge v15, v0, :cond_30e

    .line 195
    aget-object v0, v13, v15

    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 194
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, v16

    goto :goto_2ff

    .line 198
    .end local v15  # "a":I
    :cond_30e
    iget-object v0, v1, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->lTitles:Ljava/util/List;

    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 199
    iget-object v0, v1, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->lStations:Ljava/util/List;

    aget-object v15, v10, v11

    invoke-interface {v0, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_31a
    .catch Ljava/lang/Exception; {:try_start_2c0 .. :try_end_31a} :catch_31b

    .line 202
    .end local v12  # "tempT":Ljava/lang/String;
    .end local v13  # "tagsSPLITED":[Ljava/lang/String;
    .end local v14  # "titlesStation":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v16  # "tempFileT":Lcom/badlogic/gdx/files/FileHandle;
    goto :goto_31f

    .line 200
    :catch_31b
    move-exception v0

    .line 201
    .local v0, "exr":Ljava/lang/Exception;
    :try_start_31c
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 185
    .end local v0  # "exr":Ljava/lang/Exception;
    :cond_31f
    :goto_31f
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_286

    .line 153
    .end local v8  # "tempFileT2":Lcom/badlogic/gdx/files/FileHandle;
    .end local v9  # "tempT2":Ljava/lang/String;
    .end local v10  # "stationsSplit":[Ljava/lang/String;
    .end local v11  # "z":I
    :cond_323
    :goto_323
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_11f

    .line 208
    .end local v2  # "i":I
    :cond_327
    const/4 v0, 0x0

    move v2, v0

    .restart local v2  # "i":I
    :goto_329
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->sUIIS:I

    if-ge v2, v0, :cond_44f

    .line 209
    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->sUII:Ljava/util/List;

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/codedisaster/steamworks/SteamUGC$ItemInstallInfo;

    invoke-virtual {v9}, Lcom/codedisaster/steamworks/SteamUGC$ItemInstallInfo;->getFolder()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->RADIO_PATH:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->RADIO_STATIONS_FILE:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v8}, Lcom/badlogic/gdx/Files;->absolute(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v0

    if-eqz v0, :cond_44b

    .line 211
    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->sUII:Ljava/util/List;

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/codedisaster/steamworks/SteamUGC$ItemInstallInfo;

    invoke-virtual {v9}, Lcom/codedisaster/steamworks/SteamUGC$ItemInstallInfo;->getFolder()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->RADIO_PATH:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->RADIO_STATIONS_FILE:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v8}, Lcom/badlogic/gdx/Files;->absolute(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    move-object v8, v0

    .line 212
    .restart local v8  # "tempFileT2":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual {v8}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v0

    move-object v9, v0

    .line 213
    .restart local v9  # "tempT2":Ljava/lang/String;
    invoke-virtual {v9, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    move-object v10, v0

    .line 215
    .restart local v10  # "stationsSplit":[Ljava/lang/String;
    const/4 v0, 0x0

    move v11, v0

    .restart local v11  # "z":I
    :goto_39e
    array-length v0, v10

    if-ge v11, v0, :cond_44b

    .line 216
    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->sUII:Ljava/util/List;

    invoke-interface {v13, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/codedisaster/steamworks/SteamUGC$ItemInstallInfo;

    invoke-virtual {v13}, Lcom/codedisaster/steamworks/SteamUGC$ItemInstallInfo;->getFolder()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->RADIO_PATH:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    aget-object v13, v10, v11

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->RADIO_LIST_FILE:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v0, v12}, Lcom/badlogic/gdx/Files;->absolute(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v0
    :try_end_3de
    .catch Ljava/lang/Exception; {:try_start_31c .. :try_end_3de} :catch_450

    if-eqz v0, :cond_447

    .line 218
    :try_start_3e0
    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->sUII:Ljava/util/List;

    invoke-interface {v13, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/codedisaster/steamworks/SteamUGC$ItemInstallInfo;

    invoke-virtual {v13}, Lcom/codedisaster/steamworks/SteamUGC$ItemInstallInfo;->getFolder()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->RADIO_PATH:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    aget-object v13, v10, v11

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->RADIO_LIST_FILE:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v0, v12}, Lcom/badlogic/gdx/Files;->absolute(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 219
    .local v0, "tempFileT":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v12

    .line 220
    .restart local v12  # "tempT":Ljava/lang/String;
    invoke-virtual {v12, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 222
    .restart local v13  # "tagsSPLITED":[Ljava/lang/String;
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 224
    .restart local v14  # "titlesStation":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v15, 0x0

    .restart local v15  # "a":I
    :goto_427
    move-object/from16 v16, v0

    .end local v0  # "tempFileT":Lcom/badlogic/gdx/files/FileHandle;
    .restart local v16  # "tempFileT":Lcom/badlogic/gdx/files/FileHandle;
    array-length v0, v13

    if-ge v15, v0, :cond_436

    .line 225
    aget-object v0, v13, v15

    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 224
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, v16

    goto :goto_427

    .line 228
    .end local v15  # "a":I
    :cond_436
    iget-object v0, v1, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->lTitles:Ljava/util/List;

    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 229
    iget-object v0, v1, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->lStations:Ljava/util/List;

    aget-object v15, v10, v11

    invoke-interface {v0, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_442
    .catch Ljava/lang/Exception; {:try_start_3e0 .. :try_end_442} :catch_443

    .line 232
    .end local v12  # "tempT":Ljava/lang/String;
    .end local v13  # "tagsSPLITED":[Ljava/lang/String;
    .end local v14  # "titlesStation":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v16  # "tempFileT":Lcom/badlogic/gdx/files/FileHandle;
    goto :goto_447

    .line 230
    :catch_443
    move-exception v0

    .line 231
    .local v0, "exr":Ljava/lang/Exception;
    :try_start_444
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V
    :try_end_447
    .catch Ljava/lang/Exception; {:try_start_444 .. :try_end_447} :catch_450

    .line 215
    .end local v0  # "exr":Ljava/lang/Exception;
    :cond_447
    :goto_447
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_39e

    .line 208
    .end local v8  # "tempFileT2":Lcom/badlogic/gdx/files/FileHandle;
    .end local v9  # "tempT2":Ljava/lang/String;
    .end local v10  # "stationsSplit":[Ljava/lang/String;
    .end local v11  # "z":I
    :cond_44b
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_329

    .line 239
    .end local v2  # "i":I
    :cond_44f
    goto :goto_454

    .line 237
    :catch_450
    move-exception v0

    .line 238
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 241
    .end local v0  # "ex":Ljava/lang/Exception;
    :goto_454
    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->randomizePlayList()V

    .line 244
    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->loadNextMusic()V

    .line 246
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "move_army."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->isIOS()Z

    move-result v2

    if-eqz v2, :cond_46d

    move-object v2, v6

    goto :goto_46e

    :cond_46d
    move-object v2, v7

    :goto_46e
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->addSound(Ljava/lang/String;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->SFX_MOVE_ARMY:I

    .line 247
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "move_army2."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->isIOS()Z

    move-result v2

    if-eqz v2, :cond_48f

    move-object v2, v6

    goto :goto_490

    :cond_48f
    move-object v2, v7

    :goto_490
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->addSound(Ljava/lang/String;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->SFX_MOVE_ARMY2:I

    .line 248
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "move_army_re."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->isIOS()Z

    move-result v2

    if-eqz v2, :cond_4b1

    move-object v2, v6

    goto :goto_4b2

    :cond_4b1
    move-object v2, v7

    :goto_4b2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->addSound(Ljava/lang/String;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->SFX_MOVE_REGROUP:I

    .line 250
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "move0."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->isIOS()Z

    move-result v2

    if-eqz v2, :cond_4d3

    move-object v2, v6

    goto :goto_4d4

    :cond_4d3
    move-object v2, v7

    :goto_4d4
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->addSound(Ljava/lang/String;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->SFX_MOVE_ARMY_0:I

    .line 251
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "move1."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->isIOS()Z

    move-result v2

    if-eqz v2, :cond_4f5

    move-object v2, v6

    goto :goto_4f6

    :cond_4f5
    move-object v2, v7

    :goto_4f6
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->addSound(Ljava/lang/String;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->SFX_MOVE_ARMY_1:I

    .line 252
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "move2."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->isIOS()Z

    move-result v2

    if-eqz v2, :cond_517

    move-object v2, v6

    goto :goto_518

    :cond_517
    move-object v2, v7

    :goto_518
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->addSound(Ljava/lang/String;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->SFX_MOVE_ARMY_2:I

    .line 253
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "move3."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->isIOS()Z

    move-result v2

    if-eqz v2, :cond_539

    move-object v2, v6

    goto :goto_53a

    :cond_539
    move-object v2, v7

    :goto_53a
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->addSound(Ljava/lang/String;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->SFX_MOVE_ARMY_3:I

    .line 254
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "move4."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->isIOS()Z

    move-result v2

    if-eqz v2, :cond_55b

    move-object v2, v6

    goto :goto_55c

    :cond_55b
    move-object v2, v7

    :goto_55c
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->addSound(Ljava/lang/String;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->SFX_MOVE_ARMY_4:I

    .line 257
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "gold2."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->isIOS()Z

    move-result v2

    if-eqz v2, :cond_57d

    move-object v2, v6

    goto :goto_57e

    :cond_57d
    move-object v2, v7

    :goto_57e
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->addSound(Ljava/lang/String;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->SFX_GOLD:I

    .line 258
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "diplomacy."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->isIOS()Z

    move-result v2

    if-eqz v2, :cond_59f

    move-object v2, v6

    goto :goto_5a0

    :cond_59f
    move-object v2, v7

    :goto_5a0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->addSound(Ljava/lang/String;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->SFX_DIPLOMACY:I

    .line 259
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "technology."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->isIOS()Z

    move-result v2

    if-eqz v2, :cond_5c1

    move-object v2, v6

    goto :goto_5c2

    :cond_5c1
    move-object v2, v7

    :goto_5c2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->addSound(Ljava/lang/String;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->SFX_TECHNOLOGY:I

    .line 261
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "action_move."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->isIOS()Z

    move-result v2

    if-eqz v2, :cond_5e3

    move-object v2, v6

    goto :goto_5e4

    :cond_5e3
    move-object v2, v7

    :goto_5e4
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->addSound(Ljava/lang/String;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->SFX_ACTION_MOVE:I

    .line 263
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "metal."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->isIOS()Z

    move-result v2

    if-eqz v2, :cond_605

    move-object v2, v6

    goto :goto_606

    :cond_605
    move-object v2, v7

    :goto_606
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->addSound(Ljava/lang/String;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->SFX_RECRUIT:I

    .line 265
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "war."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->isIOS()Z

    move-result v2

    if-eqz v2, :cond_627

    move-object v2, v6

    goto :goto_628

    :cond_627
    move-object v2, v7

    :goto_628
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->addSound(Ljava/lang/String;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->SFX_WAR:I

    .line 266
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "war2."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->isIOS()Z

    move-result v2

    if-eqz v2, :cond_649

    move-object v2, v6

    goto :goto_64a

    :cond_649
    move-object v2, v7

    :goto_64a
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->addSound(Ljava/lang/String;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->SFX_WAR2:I

    .line 268
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "build."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->isIOS()Z

    move-result v2

    if-eqz v2, :cond_66b

    move-object v2, v6

    goto :goto_66c

    :cond_66b
    move-object v2, v7

    :goto_66c
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->addSound(Ljava/lang/String;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->SFX_BUILD:I

    .line 270
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->isIOS()Z

    move-result v2

    if-eqz v2, :cond_68d

    move-object v2, v6

    goto :goto_68e

    :cond_68d
    move-object v2, v7

    :goto_68e
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->addSound(Ljava/lang/String;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->SFX_START:I

    .line 272
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "send."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->isIOS()Z

    move-result v2

    if-eqz v2, :cond_6af

    move-object v2, v6

    goto :goto_6b0

    :cond_6af
    move-object v2, v7

    :goto_6b0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->addSound(Ljava/lang/String;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->SFX_SEND:I

    .line 273
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "send2."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->isIOS()Z

    move-result v2

    if-eqz v2, :cond_6d1

    move-object v2, v6

    goto :goto_6d2

    :cond_6d1
    move-object v2, v7

    :goto_6d2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->addSound(Ljava/lang/String;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->SFX_SEND2:I

    .line 274
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "send3."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->isIOS()Z

    move-result v2

    if-eqz v2, :cond_6f3

    move-object v2, v6

    goto :goto_6f4

    :cond_6f3
    move-object v2, v7

    :goto_6f4
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->addSound(Ljava/lang/String;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->SFX_SEND3:I

    .line 275
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "send4."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->isIOS()Z

    move-result v2

    if-eqz v2, :cond_715

    move-object v2, v6

    goto :goto_716

    :cond_715
    move-object v2, v7

    :goto_716
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->addSound(Ljava/lang/String;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->SFX_SEND4:I

    .line 276
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "event."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->isIOS()Z

    move-result v2

    if-eqz v2, :cond_737

    move-object v2, v6

    goto :goto_738

    :cond_737
    move-object v2, v7

    :goto_738
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->addSound(Ljava/lang/String;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->SFX_EVENT:I

    .line 278
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "plunder."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->isIOS()Z

    move-result v2

    if-eqz v2, :cond_759

    move-object v2, v6

    goto :goto_75a

    :cond_759
    move-object v2, v7

    :goto_75a
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->addSound(Ljava/lang/String;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->SFX_PLUNDER:I

    .line 280
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "crow."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->isIOS()Z

    move-result v2

    if-eqz v2, :cond_77b

    move-object v2, v6

    goto :goto_77c

    :cond_77b
    move-object v2, v7

    :goto_77c
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->addSound(Ljava/lang/String;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->SFX_CROW:I

    .line 282
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "assimilate."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->isIOS()Z

    move-result v2

    if-eqz v2, :cond_79d

    move-object v2, v6

    goto :goto_79e

    :cond_79d
    move-object v2, v7

    :goto_79e
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->addSound(Ljava/lang/String;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->SFX_ASSIMILATE:I

    .line 283
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "workshop."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->isIOS()Z

    move-result v2

    if-eqz v2, :cond_7bf

    move-object v2, v6

    goto :goto_7c0

    :cond_7bf
    move-object v2, v7

    :goto_7c0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->addSound(Ljava/lang/String;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->SFX_WORKSHOP:I

    .line 284
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "farm."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->isIOS()Z

    move-result v2

    if-eqz v2, :cond_7e1

    move-object v2, v6

    goto :goto_7e2

    :cond_7e1
    move-object v2, v7

    :goto_7e2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->addSound(Ljava/lang/String;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->SFX_FARM:I

    .line 285
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "port."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->isIOS()Z

    move-result v2

    if-eqz v2, :cond_803

    move-object v2, v6

    goto :goto_804

    :cond_803
    move-object v2, v7

    :goto_804
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->addSound(Ljava/lang/String;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->SFX_PORT:I

    .line 286
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "supply."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->isIOS()Z

    move-result v2

    if-eqz v2, :cond_825

    move-object v2, v6

    goto :goto_826

    :cond_825
    move-object v2, v7

    :goto_826
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->addSound(Ljava/lang/String;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->SFX_SUPPLY:I

    .line 288
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "library."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->isIOS()Z

    move-result v2

    if-eqz v2, :cond_847

    move-object v2, v6

    goto :goto_848

    :cond_847
    move-object v2, v7

    :goto_848
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->addSound(Ljava/lang/String;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->SFX_LIBRARY:I

    .line 289
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "random."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->isIOS()Z

    move-result v2

    if-eqz v2, :cond_868

    goto :goto_869

    :cond_868
    move-object v6, v7

    :goto_869
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->addSound(Ljava/lang/String;)I

    move-result v0

    sput v0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->SFX_RANDOM:I

    .line 293
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsGD:Lage/of/civilizations2/jakowski/lukasz/SettingsGD;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/SettingsGD;->VOLUME_MASTER:F

    iput v0, v1, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->masterVolume:F

    .line 294
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsGD:Lage/of/civilizations2/jakowski/lukasz/SettingsGD;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/SettingsGD;->VOLUME_SOUNDS:F

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->setSoundsVolume(F)V

    .line 295
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->settingsGD:Lage/of/civilizations2/jakowski/lukasz/SettingsGD;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/SettingsGD;->VOLUME_MUSIC:F

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->setMusicVolume(F)V

    .line 296
    return-void
.end method

.method public static final getSend()I
    .registers 2

    .line 946
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    packed-switch v0, :pswitch_data_16

    .line 954
    sget v0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->SFX_SEND4:I

    return v0

    .line 952
    :pswitch_d  #0x2
    sget v0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->SFX_SEND3:I

    return v0

    .line 950
    :pswitch_10  #0x1
    sget v0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->SFX_SEND2:I

    return v0

    .line 948
    :pswitch_13  #0x0
    sget v0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->SFX_SEND:I

    return v0

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_13  #00000000
        :pswitch_10  #00000001
        :pswitch_d  #00000002
    .end packed-switch
.end method


# virtual methods
.method public final addSound(Ljava/lang/String;)I
    .registers 8
    .param p1, "fileName"  # Ljava/lang/String;

    .line 821
    const-string v0, "sounds/"

    :try_start_2
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->lSounds:Ljava/util/List;

    sget-object v2, Lcom/badlogic/gdx/Gdx;->audio:Lcom/badlogic/gdx/Audio;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/badlogic/gdx/Audio;->newSound(Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/audio/Sound;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_22
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_2 .. :try_end_22} :catch_23

    .line 830
    goto :goto_4e

    .line 822
    :catch_23
    move-exception v1

    .line 823
    .local v1, "ex":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;->printStackTrace()V

    .line 826
    :try_start_27
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->lSounds:Ljava/util/List;

    sget-object v3, Lcom/badlogic/gdx/Gdx;->audio:Lcom/badlogic/gdx/Audio;

    sget-object v4, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-interface {v3, v0}, Lcom/badlogic/gdx/Audio;->newSound(Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/audio/Sound;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_49
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_27 .. :try_end_49} :catch_4a

    .line 829
    goto :goto_4e

    .line 827
    :catch_4a
    move-exception v0

    .line 828
    .local v0, "exr":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;->printStackTrace()V

    .line 832
    .end local v0  # "exr":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    .end local v1  # "ex":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    :goto_4e
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->lSounds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public final dispose()V
    .registers 3

    .line 936
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->lSounds:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 937
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->lSounds:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/audio/Sound;

    invoke-interface {v1}, Lcom/badlogic/gdx/audio/Sound;->dispose()V

    .line 936
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 940
    .end local v0  # "i":I
    :cond_17
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->currentMusic:Lcom/badlogic/gdx/audio/Music;

    invoke-interface {v0}, Lcom/badlogic/gdx/audio/Music;->dispose()V

    .line 941
    return-void
.end method

.method public final disposeCurrentMusic()V
    .registers 2

    .line 811
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->currentMusic:Lcom/badlogic/gdx/audio/Music;

    if-eqz v0, :cond_c

    .line 812
    invoke-interface {v0}, Lcom/badlogic/gdx/audio/Music;->stop()V

    .line 813
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->currentMusic:Lcom/badlogic/gdx/audio/Music;

    invoke-interface {v0}, Lcom/badlogic/gdx/audio/Music;->dispose()V

    .line 815
    :cond_c
    return-void
.end method

.method public final getCurrentMusicTittle()Ljava/lang/String;
    .registers 8

    .line 891
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->lTitles:Ljava/util/List;

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->stationID:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->iCurrentMusicID:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->lTitles:Ljava/util/List;

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->stationID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->iCurrentMusicID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->isIOS()Z

    move-result v4

    const-string v5, "mp3"

    const-string v6, "ogg"

    if-eqz v4, :cond_3b

    move-object v4, v5

    goto :goto_3c

    :cond_3b
    move-object v4, v6

    :goto_3c
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_7a

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->lTitles:Ljava/util/List;

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->stationID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->iCurrentMusicID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->isIOS()Z

    move-result v3

    if-eqz v3, :cond_6c

    goto :goto_6d

    :cond_6c
    move-object v5, v6

    :goto_6d
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    goto :goto_90

    :cond_7a
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->lTitles:Ljava/util/List;

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->stationID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->iCurrentMusicID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    :goto_90
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "_"

    const-string v2, " "

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getMasterVolume()F
    .registers 2

    .line 930
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->masterVolume:F

    return v0
.end method

.method public final getMusicVolume()F
    .registers 2

    .line 912
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->musicVolume:F

    return v0
.end method

.method public final getSoundsVolume()F
    .registers 2

    .line 920
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->soundsVolume:F

    return v0
.end method

.method public final loadNextMusic()V
    .registers 9

    .line 325
    const-string v0, "/"

    const-string v1, "music/"

    :try_start_4
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->disposeCurrentMusic()V

    .line 327
    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->iCurrentMusicID:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->iCurrentMusicID:I

    .line 329
    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->lTitles:Ljava/util/List;

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->stationID:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    if-lt v2, v3, :cond_23

    .line 330
    iput v4, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->iCurrentMusicID:I

    .line 331
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->randomizePlayList()V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_23} :catch_26e

    .line 335
    :cond_23
    const/16 v2, 0xdac

    :try_start_25
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->lTitles:Ljava/util/List;

    iget v6, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->stationID:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    iget v6, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->iCurrentMusicID:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v3

    if-eqz v3, :cond_b4

    .line 336
    sget-object v0, Lcom/badlogic/gdx/Gdx;->audio:Lcom/badlogic/gdx/Audio;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->lTitles:Ljava/util/List;

    iget v6, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->stationID:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    iget v6, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->iCurrentMusicID:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/badlogic/gdx/Audio;->newMusic(Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/audio/Music;

    move-result-object v0

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->currentMusic:Lcom/badlogic/gdx/audio/Music;

    .line 338
    invoke-interface {v0, v4}, Lcom/badlogic/gdx/audio/Music;->setLooping(Z)V

    .line 339
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->currentMusic:Lcom/badlogic/gdx/audio/Music;

    invoke-interface {v0}, Lcom/badlogic/gdx/audio/Music;->play()V

    .line 340
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->currentMusic:Lcom/badlogic/gdx/audio/Music;

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->musicVolume:F

    iget v5, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->masterVolume:F

    mul-float v3, v3, v5

    invoke-interface {v0, v3}, Lcom/badlogic/gdx/audio/Music;->setVolume(F)V

    .line 342
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->currentMusic:Lcom/badlogic/gdx/audio/Music;

    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/SFXManager$1;

    invoke-direct {v3, p0}, Lage/of/civilizations2/jakowski/lukasz/SFXManager$1;-><init>(Lage/of/civilizations2/jakowski/lukasz/SFXManager;)V

    invoke-interface {v0, v3}, Lcom/badlogic/gdx/audio/Music;->setOnCompletionListener(Lcom/badlogic/gdx/audio/Music$OnCompletionListener;)V

    .line 349
    sput-boolean v4, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->isPlayingConsoleMusic:Z
    :try_end_a0
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_a0} :catch_208

    .line 352
    :try_start_a0
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->toastM:Lage/of/civilizations2/jakowski/lukasz/Toast;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->getCurrentMusicTittle()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_NEUTRAL2:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v1, v3}, Lage/of/civilizations2/jakowski/lukasz/Toast;->addM(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    .line 353
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->toastM:Lage/of/civilizations2/jakowski/lukasz/Toast;

    invoke-virtual {v0, v2}, Lage/of/civilizations2/jakowski/lukasz/Toast;->setTimeInView(I)V
    :try_end_b0
    .catch Ljava/lang/Exception; {:try_start_a0 .. :try_end_b0} :catch_b1

    goto :goto_b2

    .line 354
    :catch_b1
    move-exception v0

    .line 356
    :goto_b2
    goto/16 :goto_207

    .line 358
    :cond_b4
    :try_start_b4
    sget-object v3, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->lTitles:Ljava/util/List;

    iget v7, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->stationID:I

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    iget v7, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->iCurrentMusicID:I

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v3

    if-eqz v3, :cond_147

    .line 359
    sget-object v0, Lcom/badlogic/gdx/Gdx;->audio:Lcom/badlogic/gdx/Audio;

    sget-object v3, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->lTitles:Ljava/util/List;

    iget v7, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->stationID:I

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    iget v7, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->iCurrentMusicID:I

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/badlogic/gdx/Audio;->newMusic(Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/audio/Music;

    move-result-object v0

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->currentMusic:Lcom/badlogic/gdx/audio/Music;

    .line 361
    invoke-interface {v0, v4}, Lcom/badlogic/gdx/audio/Music;->setLooping(Z)V

    .line 362
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->currentMusic:Lcom/badlogic/gdx/audio/Music;

    invoke-interface {v0}, Lcom/badlogic/gdx/audio/Music;->play()V

    .line 363
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->currentMusic:Lcom/badlogic/gdx/audio/Music;

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->musicVolume:F

    iget v5, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->masterVolume:F

    mul-float v3, v3, v5

    invoke-interface {v0, v3}, Lcom/badlogic/gdx/audio/Music;->setVolume(F)V

    .line 365
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->currentMusic:Lcom/badlogic/gdx/audio/Music;

    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/SFXManager$2;

    invoke-direct {v3, p0}, Lage/of/civilizations2/jakowski/lukasz/SFXManager$2;-><init>(Lage/of/civilizations2/jakowski/lukasz/SFXManager;)V

    invoke-interface {v0, v3}, Lcom/badlogic/gdx/audio/Music;->setOnCompletionListener(Lcom/badlogic/gdx/audio/Music$OnCompletionListener;)V

    .line 372
    sput-boolean v4, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->isPlayingConsoleMusic:Z
    :try_end_133
    .catch Ljava/lang/Exception; {:try_start_b4 .. :try_end_133} :catch_208

    .line 375
    :try_start_133
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->toastM:Lage/of/civilizations2/jakowski/lukasz/Toast;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->getCurrentMusicTittle()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_NEUTRAL2:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v1, v3}, Lage/of/civilizations2/jakowski/lukasz/Toast;->addM(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    .line 376
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->toastM:Lage/of/civilizations2/jakowski/lukasz/Toast;

    invoke-virtual {v0, v2}, Lage/of/civilizations2/jakowski/lukasz/Toast;->setTimeInView(I)V
    :try_end_143
    .catch Ljava/lang/Exception; {:try_start_133 .. :try_end_143} :catch_144

    goto :goto_145

    .line 377
    :catch_144
    move-exception v0

    .line 379
    :goto_145
    goto/16 :goto_207

    .line 382
    :cond_147
    :try_start_147
    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->lStations:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "z":I
    :goto_14f
    if-lez v3, :cond_207

    .line 383
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->RADIO_PATH:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->lStations:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->lTitles:Ljava/util/List;

    iget v7, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->stationID:I

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    iget v7, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->iCurrentMusicID:I

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v5

    invoke-virtual {v5}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v5

    if-eqz v5, :cond_203

    .line 384
    sget-object v5, Lcom/badlogic/gdx/Gdx;->audio:Lcom/badlogic/gdx/Audio;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->RADIO_PATH:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->lStations:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->lTitles:Ljava/util/List;

    iget v7, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->stationID:I

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    iget v7, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->iCurrentMusicID:I

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-interface {v5, v0}, Lcom/badlogic/gdx/Audio;->newMusic(Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/audio/Music;

    move-result-object v0

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->currentMusic:Lcom/badlogic/gdx/audio/Music;

    .line 386
    invoke-interface {v0, v4}, Lcom/badlogic/gdx/audio/Music;->setLooping(Z)V

    .line 387
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->currentMusic:Lcom/badlogic/gdx/audio/Music;

    invoke-interface {v0}, Lcom/badlogic/gdx/audio/Music;->play()V

    .line 388
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->currentMusic:Lcom/badlogic/gdx/audio/Music;

    iget v5, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->musicVolume:F

    iget v6, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->masterVolume:F

    mul-float v5, v5, v6

    invoke-interface {v0, v5}, Lcom/badlogic/gdx/audio/Music;->setVolume(F)V

    .line 390
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->currentMusic:Lcom/badlogic/gdx/audio/Music;

    new-instance v5, Lage/of/civilizations2/jakowski/lukasz/SFXManager$3;

    invoke-direct {v5, p0}, Lage/of/civilizations2/jakowski/lukasz/SFXManager$3;-><init>(Lage/of/civilizations2/jakowski/lukasz/SFXManager;)V

    invoke-interface {v0, v5}, Lcom/badlogic/gdx/audio/Music;->setOnCompletionListener(Lcom/badlogic/gdx/audio/Music$OnCompletionListener;)V

    .line 397
    sput-boolean v4, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->isPlayingConsoleMusic:Z
    :try_end_1f0
    .catch Ljava/lang/Exception; {:try_start_147 .. :try_end_1f0} :catch_208

    .line 400
    :try_start_1f0
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->toastM:Lage/of/civilizations2/jakowski/lukasz/Toast;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->getCurrentMusicTittle()Ljava/lang/String;

    move-result-object v1

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_NEUTRAL2:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v1, v4}, Lage/of/civilizations2/jakowski/lukasz/Toast;->addM(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    .line 401
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->toastM:Lage/of/civilizations2/jakowski/lukasz/Toast;

    invoke-virtual {v0, v2}, Lage/of/civilizations2/jakowski/lukasz/Toast;->setTimeInView(I)V
    :try_end_200
    .catch Ljava/lang/Exception; {:try_start_1f0 .. :try_end_200} :catch_201

    .line 404
    goto :goto_207

    .line 402
    :catch_201
    move-exception v0

    .line 405
    goto :goto_207

    .line 382
    :cond_203
    add-int/lit8 v3, v3, -0x1

    goto/16 :goto_14f

    .line 436
    .end local v3  # "z":I
    :cond_207
    :goto_207
    goto :goto_26d

    .line 410
    :catch_208
    move-exception v0

    .line 412
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_209
    sget-object v3, Lcom/badlogic/gdx/Gdx;->audio:Lcom/badlogic/gdx/Audio;

    sget-object v5, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->lTitles:Ljava/util/List;

    iget v7, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->stationID:I

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    iget v7, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->iCurrentMusicID:I

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v5, v1}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    invoke-interface {v3, v1}, Lcom/badlogic/gdx/Audio;->newMusic(Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/audio/Music;

    move-result-object v1

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->currentMusic:Lcom/badlogic/gdx/audio/Music;

    .line 414
    invoke-interface {v1, v4}, Lcom/badlogic/gdx/audio/Music;->setLooping(Z)V

    .line 415
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->currentMusic:Lcom/badlogic/gdx/audio/Music;

    invoke-interface {v1}, Lcom/badlogic/gdx/audio/Music;->play()V

    .line 416
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->currentMusic:Lcom/badlogic/gdx/audio/Music;

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->musicVolume:F

    iget v5, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->masterVolume:F

    mul-float v3, v3, v5

    invoke-interface {v1, v3}, Lcom/badlogic/gdx/audio/Music;->setVolume(F)V

    .line 418
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->currentMusic:Lcom/badlogic/gdx/audio/Music;

    new-instance v3, Lage/of/civilizations2/jakowski/lukasz/SFXManager$4;

    invoke-direct {v3, p0}, Lage/of/civilizations2/jakowski/lukasz/SFXManager$4;-><init>(Lage/of/civilizations2/jakowski/lukasz/SFXManager;)V

    invoke-interface {v1, v3}, Lcom/badlogic/gdx/audio/Music;->setOnCompletionListener(Lcom/badlogic/gdx/audio/Music$OnCompletionListener;)V

    .line 425
    sput-boolean v4, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->isPlayingConsoleMusic:Z
    :try_end_259
    .catch Ljava/lang/Exception; {:try_start_209 .. :try_end_259} :catch_26c

    .line 428
    :try_start_259
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->toastM:Lage/of/civilizations2/jakowski/lukasz/Toast;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->getCurrentMusicTittle()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_NEUTRAL2:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v1, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Toast;->addM(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    .line 429
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->toastM:Lage/of/civilizations2/jakowski/lukasz/Toast;

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Toast;->setTimeInView(I)V
    :try_end_269
    .catch Ljava/lang/Exception; {:try_start_259 .. :try_end_269} :catch_26a

    .line 432
    goto :goto_26b

    .line 430
    :catch_26a
    move-exception v1

    .line 435
    :goto_26b
    goto :goto_26d

    .line 433
    :catch_26c
    move-exception v1

    .line 439
    .end local v0  # "ex":Ljava/lang/Exception;
    :goto_26d
    goto :goto_26f

    .line 437
    :catch_26e
    move-exception v0

    .line 440
    :goto_26f
    return-void
.end method

.method public final loadNextMusic(Ljava/lang/String;)V
    .registers 7
    .param p1, "fileName"  # Ljava/lang/String;

    .line 655
    const-string v0, "music/"

    const-string v1, "audio/"

    :try_start_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_7a

    .line 656
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->disposeCurrentMusic()V

    .line 658
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->iCurrentMusicID:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->iCurrentMusicID:I

    .line 660
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->lTitles:Ljava/util/List;

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->stationID:I

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_3e

    .line 661
    iput v3, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->iCurrentMusicID:I

    .line 662
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->randomizePlayList()V

    .line 665
    :cond_3e
    sget-object v0, Lcom/badlogic/gdx/Gdx;->audio:Lcom/badlogic/gdx/Audio;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Audio;->newMusic(Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/audio/Music;

    move-result-object v0

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->currentMusic:Lcom/badlogic/gdx/audio/Music;

    .line 667
    invoke-interface {v0, v3}, Lcom/badlogic/gdx/audio/Music;->setLooping(Z)V

    .line 668
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->currentMusic:Lcom/badlogic/gdx/audio/Music;

    invoke-interface {v0}, Lcom/badlogic/gdx/audio/Music;->play()V

    .line 669
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->currentMusic:Lcom/badlogic/gdx/audio/Music;

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->musicVolume:F

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->masterVolume:F

    mul-float v1, v1, v2

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/audio/Music;->setVolume(F)V

    .line 671
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->currentMusic:Lcom/badlogic/gdx/audio/Music;

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/SFXManager$12;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/SFXManager$12;-><init>(Lage/of/civilizations2/jakowski/lukasz/SFXManager;)V

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/audio/Music;->setOnCompletionListener(Lcom/badlogic/gdx/audio/Music$OnCompletionListener;)V

    goto/16 :goto_1de

    .line 678
    :cond_7a
    sget-object v2, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v2

    if-eqz v2, :cond_f3

    .line 679
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->disposeCurrentMusic()V

    .line 681
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->iCurrentMusicID:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->iCurrentMusicID:I

    .line 683
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->lTitles:Ljava/util/List;

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->stationID:I

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_b5

    .line 684
    iput v3, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->iCurrentMusicID:I

    .line 685
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->randomizePlayList()V

    .line 688
    :cond_b5
    sget-object v0, Lcom/badlogic/gdx/Gdx;->audio:Lcom/badlogic/gdx/Audio;

    sget-object v2, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Audio;->newMusic(Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/audio/Music;

    move-result-object v0

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->currentMusic:Lcom/badlogic/gdx/audio/Music;

    .line 690
    invoke-interface {v0, v3}, Lcom/badlogic/gdx/audio/Music;->setLooping(Z)V

    .line 691
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->currentMusic:Lcom/badlogic/gdx/audio/Music;

    invoke-interface {v0}, Lcom/badlogic/gdx/audio/Music;->play()V

    .line 692
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->currentMusic:Lcom/badlogic/gdx/audio/Music;

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->musicVolume:F

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->masterVolume:F

    mul-float v1, v1, v2

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/audio/Music;->setVolume(F)V

    .line 694
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->currentMusic:Lcom/badlogic/gdx/audio/Music;

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/SFXManager$13;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/SFXManager$13;-><init>(Lage/of/civilizations2/jakowski/lukasz/SFXManager;)V

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/audio/Music;->setOnCompletionListener(Lcom/badlogic/gdx/audio/Music$OnCompletionListener;)V

    goto/16 :goto_1de

    .line 701
    :cond_f3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v1

    if-eqz v1, :cond_167

    .line 702
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->disposeCurrentMusic()V

    .line 704
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->iCurrentMusicID:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->iCurrentMusicID:I

    .line 706
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->lTitles:Ljava/util/List;

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->stationID:I

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v1, v2, :cond_12c

    .line 707
    iput v3, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->iCurrentMusicID:I

    .line 708
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->randomizePlayList()V

    .line 711
    :cond_12c
    sget-object v1, Lcom/badlogic/gdx/Gdx;->audio:Lcom/badlogic/gdx/Audio;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/Audio;->newMusic(Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/audio/Music;

    move-result-object v0

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->currentMusic:Lcom/badlogic/gdx/audio/Music;

    .line 713
    invoke-interface {v0, v3}, Lcom/badlogic/gdx/audio/Music;->setLooping(Z)V

    .line 714
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->currentMusic:Lcom/badlogic/gdx/audio/Music;

    invoke-interface {v0}, Lcom/badlogic/gdx/audio/Music;->play()V

    .line 715
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->currentMusic:Lcom/badlogic/gdx/audio/Music;

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->musicVolume:F

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->masterVolume:F

    mul-float v1, v1, v2

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/audio/Music;->setVolume(F)V

    .line 717
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->currentMusic:Lcom/badlogic/gdx/audio/Music;

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/SFXManager$14;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/SFXManager$14;-><init>(Lage/of/civilizations2/jakowski/lukasz/SFXManager;)V

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/audio/Music;->setOnCompletionListener(Lcom/badlogic/gdx/audio/Music$OnCompletionListener;)V

    goto :goto_1de

    .line 724
    :cond_167
    sget-object v1, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v1

    if-eqz v1, :cond_1de

    .line 725
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->disposeCurrentMusic()V

    .line 727
    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->iCurrentMusicID:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->iCurrentMusicID:I

    .line 729
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->lTitles:Ljava/util/List;

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->stationID:I

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v1, v2, :cond_1a2

    .line 730
    iput v3, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->iCurrentMusicID:I

    .line 731
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->randomizePlayList()V

    .line 734
    :cond_1a2
    sget-object v1, Lcom/badlogic/gdx/Gdx;->audio:Lcom/badlogic/gdx/Audio;

    sget-object v2, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/Audio;->newMusic(Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/audio/Music;

    move-result-object v0

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->currentMusic:Lcom/badlogic/gdx/audio/Music;

    .line 736
    invoke-interface {v0, v3}, Lcom/badlogic/gdx/audio/Music;->setLooping(Z)V

    .line 737
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->currentMusic:Lcom/badlogic/gdx/audio/Music;

    invoke-interface {v0}, Lcom/badlogic/gdx/audio/Music;->play()V

    .line 738
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->currentMusic:Lcom/badlogic/gdx/audio/Music;

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->musicVolume:F

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->masterVolume:F

    mul-float v1, v1, v2

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/audio/Music;->setVolume(F)V

    .line 740
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->currentMusic:Lcom/badlogic/gdx/audio/Music;

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/SFXManager$15;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/SFXManager$15;-><init>(Lage/of/civilizations2/jakowski/lukasz/SFXManager;)V

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/audio/Music;->setOnCompletionListener(Lcom/badlogic/gdx/audio/Music$OnCompletionListener;)V
    :try_end_1de
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_1de} :catch_1df

    .line 752
    :cond_1de
    :goto_1de
    goto :goto_1e3

    .line 750
    :catch_1df
    move-exception v0

    .line 751
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_1e0
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V
    :try_end_1e3
    .catch Ljava/lang/Exception; {:try_start_1e0 .. :try_end_1e3} :catch_1e4

    .line 754
    .end local v0  # "ex":Ljava/lang/Exception;
    :goto_1e3
    return-void

    .line 755
    :catch_1e4
    move-exception v0

    .line 756
    .restart local v0  # "ex":Ljava/lang/Exception;
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 758
    .end local v0  # "ex":Ljava/lang/Exception;
    return-void
.end method

.method public final loadNextMusic_Default(Ljava/lang/String;)V
    .registers 8
    .param p1, "fileName"  # Ljava/lang/String;

    .line 568
    const-string v0, "/"

    const-string v1, "music/"

    :try_start_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_7a

    .line 569
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->disposeCurrentMusic()V

    .line 571
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->iCurrentMusicID:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->iCurrentMusicID:I

    .line 573
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->lTitles:Ljava/util/List;

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->stationID:I

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_3e

    .line 574
    iput v3, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->iCurrentMusicID:I

    .line 575
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->randomizePlayList()V

    .line 578
    :cond_3e
    sget-object v0, Lcom/badlogic/gdx/Gdx;->audio:Lcom/badlogic/gdx/Audio;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Audio;->newMusic(Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/audio/Music;

    move-result-object v0

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->currentMusic:Lcom/badlogic/gdx/audio/Music;

    .line 580
    invoke-interface {v0, v3}, Lcom/badlogic/gdx/audio/Music;->setLooping(Z)V

    .line 581
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->currentMusic:Lcom/badlogic/gdx/audio/Music;

    invoke-interface {v0}, Lcom/badlogic/gdx/audio/Music;->play()V

    .line 582
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->currentMusic:Lcom/badlogic/gdx/audio/Music;

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->musicVolume:F

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->masterVolume:F

    mul-float v1, v1, v2

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/audio/Music;->setVolume(F)V

    .line 584
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->currentMusic:Lcom/badlogic/gdx/audio/Music;

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/SFXManager$9;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/SFXManager$9;-><init>(Lage/of/civilizations2/jakowski/lukasz/SFXManager;)V

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/audio/Music;->setOnCompletionListener(Lcom/badlogic/gdx/audio/Music$OnCompletionListener;)V

    goto/16 :goto_199

    .line 591
    :cond_7a
    sget-object v2, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v2

    if-eqz v2, :cond_f3

    .line 592
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->disposeCurrentMusic()V

    .line 594
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->iCurrentMusicID:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->iCurrentMusicID:I

    .line 596
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->lTitles:Ljava/util/List;

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->stationID:I

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_b5

    .line 597
    iput v3, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->iCurrentMusicID:I

    .line 598
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->randomizePlayList()V

    .line 601
    :cond_b5
    sget-object v0, Lcom/badlogic/gdx/Gdx;->audio:Lcom/badlogic/gdx/Audio;

    sget-object v2, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Audio;->newMusic(Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/audio/Music;

    move-result-object v0

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->currentMusic:Lcom/badlogic/gdx/audio/Music;

    .line 603
    invoke-interface {v0, v3}, Lcom/badlogic/gdx/audio/Music;->setLooping(Z)V

    .line 604
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->currentMusic:Lcom/badlogic/gdx/audio/Music;

    invoke-interface {v0}, Lcom/badlogic/gdx/audio/Music;->play()V

    .line 605
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->currentMusic:Lcom/badlogic/gdx/audio/Music;

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->musicVolume:F

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->masterVolume:F

    mul-float v1, v1, v2

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/audio/Music;->setVolume(F)V

    .line 607
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->currentMusic:Lcom/badlogic/gdx/audio/Music;

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/SFXManager$10;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/SFXManager$10;-><init>(Lage/of/civilizations2/jakowski/lukasz/SFXManager;)V

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/audio/Music;->setOnCompletionListener(Lcom/badlogic/gdx/audio/Music$OnCompletionListener;)V

    goto/16 :goto_199

    .line 615
    :cond_f3
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->lStations:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "z":I
    :goto_fb
    if-lez v1, :cond_199

    .line 616
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->RADIO_PATH:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->lStations:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v2

    if-eqz v2, :cond_195

    .line 617
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->disposeCurrentMusic()V

    .line 619
    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->iCurrentMusicID:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->iCurrentMusicID:I

    .line 621
    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->lTitles:Ljava/util/List;

    iget v5, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->stationID:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lt v2, v4, :cond_148

    .line 622
    iput v3, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->iCurrentMusicID:I

    .line 623
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->randomizePlayList()V

    .line 626
    :cond_148
    sget-object v2, Lcom/badlogic/gdx/Gdx;->audio:Lcom/badlogic/gdx/Audio;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->RADIO_PATH:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->lStations:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/badlogic/gdx/Audio;->newMusic(Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/audio/Music;

    move-result-object v0

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->currentMusic:Lcom/badlogic/gdx/audio/Music;

    .line 628
    invoke-interface {v0, v3}, Lcom/badlogic/gdx/audio/Music;->setLooping(Z)V

    .line 629
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->currentMusic:Lcom/badlogic/gdx/audio/Music;

    invoke-interface {v0}, Lcom/badlogic/gdx/audio/Music;->play()V

    .line 630
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->currentMusic:Lcom/badlogic/gdx/audio/Music;

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->musicVolume:F

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->masterVolume:F

    mul-float v2, v2, v3

    invoke-interface {v0, v2}, Lcom/badlogic/gdx/audio/Music;->setVolume(F)V

    .line 632
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->currentMusic:Lcom/badlogic/gdx/audio/Music;

    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/SFXManager$11;

    invoke-direct {v2, p0}, Lage/of/civilizations2/jakowski/lukasz/SFXManager$11;-><init>(Lage/of/civilizations2/jakowski/lukasz/SFXManager;)V

    invoke-interface {v0, v2}, Lcom/badlogic/gdx/audio/Music;->setOnCompletionListener(Lcom/badlogic/gdx/audio/Music$OnCompletionListener;)V
    :try_end_194
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_194} :catch_19a

    .line 638
    goto :goto_199

    .line 615
    :cond_195
    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_fb

    .line 644
    .end local v1  # "z":I
    :cond_199
    :goto_199
    goto :goto_19e

    .line 642
    :catch_19a
    move-exception v0

    .line 643
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_19b
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V
    :try_end_19e
    .catch Ljava/lang/Exception; {:try_start_19b .. :try_end_19e} :catch_19f

    .line 646
    .end local v0  # "ex":Ljava/lang/Exception;
    :goto_19e
    return-void

    .line 647
    :catch_19f
    move-exception v0

    .line 648
    .restart local v0  # "ex":Ljava/lang/Exception;
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 650
    .end local v0  # "ex":Ljava/lang/Exception;
    return-void
.end method

.method public final loadPreviousMusic()V
    .registers 9

    .line 444
    const-string v0, "/"

    const-string v1, "music/"

    :try_start_4
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->disposeCurrentMusic()V

    .line 446
    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->iCurrentMusicID:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->iCurrentMusicID:I

    .line 448
    const/4 v3, 0x0

    if-gez v2, :cond_12

    .line 449
    iput v3, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->iCurrentMusicID:I

    .line 452
    :cond_12
    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->iCurrentMusicID:I

    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->lTitles:Ljava/util/List;

    iget v5, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->stationID:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lt v2, v4, :cond_29

    .line 453
    iput v3, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->iCurrentMusicID:I

    .line 454
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->randomizePlayList()V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_29} :catch_274

    .line 458
    :cond_29
    const/16 v2, 0xdac

    :try_start_2b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->lTitles:Ljava/util/List;

    iget v6, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->stationID:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    iget v6, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->iCurrentMusicID:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v4

    if-eqz v4, :cond_ba

    .line 459
    sget-object v0, Lcom/badlogic/gdx/Gdx;->audio:Lcom/badlogic/gdx/Audio;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->lTitles:Ljava/util/List;

    iget v6, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->stationID:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    iget v6, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->iCurrentMusicID:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v4

    invoke-interface {v0, v4}, Lcom/badlogic/gdx/Audio;->newMusic(Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/audio/Music;

    move-result-object v0

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->currentMusic:Lcom/badlogic/gdx/audio/Music;

    .line 461
    invoke-interface {v0, v3}, Lcom/badlogic/gdx/audio/Music;->setLooping(Z)V

    .line 462
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->currentMusic:Lcom/badlogic/gdx/audio/Music;

    invoke-interface {v0}, Lcom/badlogic/gdx/audio/Music;->play()V

    .line 463
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->currentMusic:Lcom/badlogic/gdx/audio/Music;

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->musicVolume:F

    iget v5, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->masterVolume:F

    mul-float v4, v4, v5

    invoke-interface {v0, v4}, Lcom/badlogic/gdx/audio/Music;->setVolume(F)V

    .line 465
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->currentMusic:Lcom/badlogic/gdx/audio/Music;

    new-instance v4, Lage/of/civilizations2/jakowski/lukasz/SFXManager$5;

    invoke-direct {v4, p0}, Lage/of/civilizations2/jakowski/lukasz/SFXManager$5;-><init>(Lage/of/civilizations2/jakowski/lukasz/SFXManager;)V

    invoke-interface {v0, v4}, Lcom/badlogic/gdx/audio/Music;->setOnCompletionListener(Lcom/badlogic/gdx/audio/Music$OnCompletionListener;)V

    .line 472
    sput-boolean v3, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->isPlayingConsoleMusic:Z
    :try_end_a6
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_a6} :catch_20e

    .line 475
    :try_start_a6
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->toastM:Lage/of/civilizations2/jakowski/lukasz/Toast;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->getCurrentMusicTittle()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_NEUTRAL2:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v1, v3}, Lage/of/civilizations2/jakowski/lukasz/Toast;->addM(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    .line 476
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->toastM:Lage/of/civilizations2/jakowski/lukasz/Toast;

    invoke-virtual {v0, v2}, Lage/of/civilizations2/jakowski/lukasz/Toast;->setTimeInView(I)V
    :try_end_b6
    .catch Ljava/lang/Exception; {:try_start_a6 .. :try_end_b6} :catch_b7

    goto :goto_b8

    .line 477
    :catch_b7
    move-exception v0

    .line 479
    :goto_b8
    goto/16 :goto_20d

    .line 481
    :cond_ba
    :try_start_ba
    sget-object v4, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->lTitles:Ljava/util/List;

    iget v7, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->stationID:I

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    iget v7, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->iCurrentMusicID:I

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v4

    if-eqz v4, :cond_14d

    .line 482
    sget-object v0, Lcom/badlogic/gdx/Gdx;->audio:Lcom/badlogic/gdx/Audio;

    sget-object v4, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->lTitles:Ljava/util/List;

    iget v7, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->stationID:I

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    iget v7, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->iCurrentMusicID:I

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v4

    invoke-interface {v0, v4}, Lcom/badlogic/gdx/Audio;->newMusic(Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/audio/Music;

    move-result-object v0

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->currentMusic:Lcom/badlogic/gdx/audio/Music;

    .line 484
    invoke-interface {v0, v3}, Lcom/badlogic/gdx/audio/Music;->setLooping(Z)V

    .line 485
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->currentMusic:Lcom/badlogic/gdx/audio/Music;

    invoke-interface {v0}, Lcom/badlogic/gdx/audio/Music;->play()V

    .line 486
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->currentMusic:Lcom/badlogic/gdx/audio/Music;

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->musicVolume:F

    iget v5, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->masterVolume:F

    mul-float v4, v4, v5

    invoke-interface {v0, v4}, Lcom/badlogic/gdx/audio/Music;->setVolume(F)V

    .line 488
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->currentMusic:Lcom/badlogic/gdx/audio/Music;

    new-instance v4, Lage/of/civilizations2/jakowski/lukasz/SFXManager$6;

    invoke-direct {v4, p0}, Lage/of/civilizations2/jakowski/lukasz/SFXManager$6;-><init>(Lage/of/civilizations2/jakowski/lukasz/SFXManager;)V

    invoke-interface {v0, v4}, Lcom/badlogic/gdx/audio/Music;->setOnCompletionListener(Lcom/badlogic/gdx/audio/Music$OnCompletionListener;)V

    .line 495
    sput-boolean v3, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->isPlayingConsoleMusic:Z
    :try_end_139
    .catch Ljava/lang/Exception; {:try_start_ba .. :try_end_139} :catch_20e

    .line 498
    :try_start_139
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->toastM:Lage/of/civilizations2/jakowski/lukasz/Toast;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->getCurrentMusicTittle()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_NEUTRAL2:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v1, v3}, Lage/of/civilizations2/jakowski/lukasz/Toast;->addM(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    .line 499
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->toastM:Lage/of/civilizations2/jakowski/lukasz/Toast;

    invoke-virtual {v0, v2}, Lage/of/civilizations2/jakowski/lukasz/Toast;->setTimeInView(I)V
    :try_end_149
    .catch Ljava/lang/Exception; {:try_start_139 .. :try_end_149} :catch_14a

    goto :goto_14b

    .line 500
    :catch_14a
    move-exception v0

    .line 502
    :goto_14b
    goto/16 :goto_20d

    .line 505
    :cond_14d
    :try_start_14d
    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->lStations:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .local v4, "z":I
    :goto_155
    if-lez v4, :cond_20d

    .line 506
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->RADIO_PATH:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->lStations:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->lTitles:Ljava/util/List;

    iget v7, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->stationID:I

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    iget v7, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->iCurrentMusicID:I

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v5

    invoke-virtual {v5}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v5

    if-eqz v5, :cond_209

    .line 507
    sget-object v5, Lcom/badlogic/gdx/Gdx;->audio:Lcom/badlogic/gdx/Audio;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->RADIO_PATH:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->lStations:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->lTitles:Ljava/util/List;

    iget v7, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->stationID:I

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    iget v7, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->iCurrentMusicID:I

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-interface {v5, v0}, Lcom/badlogic/gdx/Audio;->newMusic(Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/audio/Music;

    move-result-object v0

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->currentMusic:Lcom/badlogic/gdx/audio/Music;

    .line 509
    invoke-interface {v0, v3}, Lcom/badlogic/gdx/audio/Music;->setLooping(Z)V

    .line 510
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->currentMusic:Lcom/badlogic/gdx/audio/Music;

    invoke-interface {v0}, Lcom/badlogic/gdx/audio/Music;->play()V

    .line 511
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->currentMusic:Lcom/badlogic/gdx/audio/Music;

    iget v5, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->musicVolume:F

    iget v6, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->masterVolume:F

    mul-float v5, v5, v6

    invoke-interface {v0, v5}, Lcom/badlogic/gdx/audio/Music;->setVolume(F)V

    .line 513
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->currentMusic:Lcom/badlogic/gdx/audio/Music;

    new-instance v5, Lage/of/civilizations2/jakowski/lukasz/SFXManager$7;

    invoke-direct {v5, p0}, Lage/of/civilizations2/jakowski/lukasz/SFXManager$7;-><init>(Lage/of/civilizations2/jakowski/lukasz/SFXManager;)V

    invoke-interface {v0, v5}, Lcom/badlogic/gdx/audio/Music;->setOnCompletionListener(Lcom/badlogic/gdx/audio/Music$OnCompletionListener;)V

    .line 520
    sput-boolean v3, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->isPlayingConsoleMusic:Z
    :try_end_1f6
    .catch Ljava/lang/Exception; {:try_start_14d .. :try_end_1f6} :catch_20e

    .line 523
    :try_start_1f6
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->toastM:Lage/of/civilizations2/jakowski/lukasz/Toast;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->getCurrentMusicTittle()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_NEUTRAL2:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v1, v3}, Lage/of/civilizations2/jakowski/lukasz/Toast;->addM(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    .line 524
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->toastM:Lage/of/civilizations2/jakowski/lukasz/Toast;

    invoke-virtual {v0, v2}, Lage/of/civilizations2/jakowski/lukasz/Toast;->setTimeInView(I)V
    :try_end_206
    .catch Ljava/lang/Exception; {:try_start_1f6 .. :try_end_206} :catch_207

    .line 527
    goto :goto_20d

    .line 525
    :catch_207
    move-exception v0

    .line 528
    goto :goto_20d

    .line 505
    :cond_209
    add-int/lit8 v4, v4, -0x1

    goto/16 :goto_155

    .line 559
    .end local v4  # "z":I
    :cond_20d
    :goto_20d
    goto :goto_273

    .line 533
    :catch_20e
    move-exception v0

    .line 535
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_20f
    sget-object v4, Lcom/badlogic/gdx/Gdx;->audio:Lcom/badlogic/gdx/Audio;

    sget-object v5, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->lTitles:Ljava/util/List;

    iget v7, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->stationID:I

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    iget v7, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->iCurrentMusicID:I

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v5, v1}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    invoke-interface {v4, v1}, Lcom/badlogic/gdx/Audio;->newMusic(Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/audio/Music;

    move-result-object v1

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->currentMusic:Lcom/badlogic/gdx/audio/Music;

    .line 537
    invoke-interface {v1, v3}, Lcom/badlogic/gdx/audio/Music;->setLooping(Z)V

    .line 538
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->currentMusic:Lcom/badlogic/gdx/audio/Music;

    invoke-interface {v1}, Lcom/badlogic/gdx/audio/Music;->play()V

    .line 539
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->currentMusic:Lcom/badlogic/gdx/audio/Music;

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->musicVolume:F

    iget v5, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->masterVolume:F

    mul-float v4, v4, v5

    invoke-interface {v1, v4}, Lcom/badlogic/gdx/audio/Music;->setVolume(F)V

    .line 541
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->currentMusic:Lcom/badlogic/gdx/audio/Music;

    new-instance v4, Lage/of/civilizations2/jakowski/lukasz/SFXManager$8;

    invoke-direct {v4, p0}, Lage/of/civilizations2/jakowski/lukasz/SFXManager$8;-><init>(Lage/of/civilizations2/jakowski/lukasz/SFXManager;)V

    invoke-interface {v1, v4}, Lcom/badlogic/gdx/audio/Music;->setOnCompletionListener(Lcom/badlogic/gdx/audio/Music$OnCompletionListener;)V

    .line 548
    sput-boolean v3, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->isPlayingConsoleMusic:Z
    :try_end_25f
    .catch Ljava/lang/Exception; {:try_start_20f .. :try_end_25f} :catch_272

    .line 551
    :try_start_25f
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->toastM:Lage/of/civilizations2/jakowski/lukasz/Toast;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->getCurrentMusicTittle()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_NEUTRAL2:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v1, v3, v4}, Lage/of/civilizations2/jakowski/lukasz/Toast;->addM(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    .line 552
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->toastM:Lage/of/civilizations2/jakowski/lukasz/Toast;

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Toast;->setTimeInView(I)V
    :try_end_26f
    .catch Ljava/lang/Exception; {:try_start_25f .. :try_end_26f} :catch_270

    .line 555
    goto :goto_271

    .line 553
    :catch_270
    move-exception v1

    .line 558
    :goto_271
    goto :goto_273

    .line 556
    :catch_272
    move-exception v1

    .line 562
    .end local v0  # "ex":Ljava/lang/Exception;
    :goto_273
    goto :goto_275

    .line 560
    :catch_274
    move-exception v0

    .line 563
    :goto_275
    return-void
.end method

.method public final playConsoleMusic()V
    .registers 4

    .line 762
    :try_start_0
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->disposeCurrentMusic()V

    .line 764
    sget-object v0, Lcom/badlogic/gdx/Gdx;->audio:Lcom/badlogic/gdx/Audio;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "music/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->CONSOLE_MUSIC_TITLE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Audio;->newMusic(Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/audio/Music;

    move-result-object v0

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->currentMusic:Lcom/badlogic/gdx/audio/Music;

    .line 768
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/audio/Music;->setLooping(Z)V

    .line 769
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->currentMusic:Lcom/badlogic/gdx/audio/Music;

    invoke-interface {v0}, Lcom/badlogic/gdx/audio/Music;->play()V

    .line 770
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->currentMusic:Lcom/badlogic/gdx/audio/Music;

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->musicVolume:F

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->masterVolume:F

    mul-float v1, v1, v2

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/audio/Music;->setVolume(F)V

    .line 772
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->currentMusic:Lcom/badlogic/gdx/audio/Music;

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/SFXManager$16;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/SFXManager$16;-><init>(Lage/of/civilizations2/jakowski/lukasz/SFXManager;)V

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/audio/Music;->setOnCompletionListener(Lcom/badlogic/gdx/audio/Music$OnCompletionListener;)V

    .line 779
    const/4 v0, 0x1

    sput-boolean v0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->isPlayingConsoleMusic:Z
    :try_end_45
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_45} :catch_48
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_0 .. :try_end_45} :catch_46

    goto :goto_49

    .line 782
    :catch_46
    move-exception v0

    goto :goto_4a

    .line 780
    :catch_48
    move-exception v0

    .line 784
    :goto_49
    nop

    .line 785
    :goto_4a
    return-void
.end method

.method public final playMoveArmy()I
    .registers 3

    .line 845
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    const/16 v1, 0xae

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    rem-int/lit8 v0, v0, 0x7

    .line 847
    .local v0, "tID":I
    packed-switch v0, :pswitch_data_22

    .line 861
    sget v1, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->SFX_MOVE_ARMY:I

    return v1

    .line 859
    :pswitch_10  #0x6
    sget v1, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->SFX_MOVE_ARMY_4:I

    return v1

    .line 857
    :pswitch_13  #0x5
    sget v1, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->SFX_MOVE_ARMY_3:I

    return v1

    .line 855
    :pswitch_16  #0x4
    sget v1, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->SFX_MOVE_ARMY_2:I

    return v1

    .line 853
    :pswitch_19  #0x3
    sget v1, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->SFX_MOVE_ARMY_1:I

    return v1

    .line 851
    :pswitch_1c  #0x2
    sget v1, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->SFX_MOVE_ARMY_0:I

    return v1

    .line 849
    :pswitch_1f  #0x1
    sget v1, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->SFX_MOVE_ARMY2:I

    return v1

    :pswitch_data_22
    .packed-switch 0x1
        :pswitch_1f  #00000001
        :pswitch_1c  #00000002
        :pswitch_19  #00000003
        :pswitch_16  #00000004
        :pswitch_13  #00000005
        :pswitch_10  #00000006
    .end packed-switch
.end method

.method public final playMoveArmyRegroup()I
    .registers 3

    .line 866
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->oR:Ljava/util/Random;

    const/16 v1, 0xae

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    rem-int/lit8 v0, v0, 0x8

    .line 868
    .local v0, "tID":I
    packed-switch v0, :pswitch_data_26

    .line 884
    sget v1, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->SFX_MOVE_ARMY:I

    return v1

    .line 882
    :pswitch_10  #0x7
    sget v1, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->SFX_MOVE_REGROUP:I

    return v1

    .line 880
    :pswitch_13  #0x6
    sget v1, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->SFX_MOVE_ARMY_4:I

    return v1

    .line 878
    :pswitch_16  #0x5
    sget v1, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->SFX_MOVE_ARMY_3:I

    return v1

    .line 876
    :pswitch_19  #0x4
    sget v1, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->SFX_MOVE_ARMY_2:I

    return v1

    .line 874
    :pswitch_1c  #0x3
    sget v1, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->SFX_MOVE_ARMY_1:I

    return v1

    .line 872
    :pswitch_1f  #0x2
    sget v1, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->SFX_MOVE_ARMY_0:I

    return v1

    .line 870
    :pswitch_22  #0x1
    sget v1, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->SFX_MOVE_ARMY2:I

    return v1

    nop

    :pswitch_data_26
    .packed-switch 0x1
        :pswitch_22  #00000001
        :pswitch_1f  #00000002
        :pswitch_1c  #00000003
        :pswitch_19  #00000004
        :pswitch_16  #00000005
        :pswitch_13  #00000006
        :pswitch_10  #00000007
    .end packed-switch
.end method

.method public final playSound(I)V
    .registers 3
    .param p1, "id"  # I

    .line 836
    const/high16 v0, 0x3f800000  # 1.0f

    invoke-virtual {p0, p1, v0}, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->playSound(IF)V

    .line 837
    return-void
.end method

.method public final playSound(IF)V
    .registers 6
    .param p1, "id"  # I
    .param p2, "fPercOfVolume"  # F

    .line 840
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->lSounds:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/audio/Sound;

    invoke-interface {v0}, Lcom/badlogic/gdx/audio/Sound;->stop()V

    .line 841
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->lSounds:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/audio/Sound;

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->soundsVolume:F

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->masterVolume:F

    mul-float v1, v1, v2

    mul-float v1, v1, p2

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/audio/Sound;->play(F)J

    .line 842
    return-void
.end method

.method public final playStartMusic()V
    .registers 4

    .line 789
    :try_start_0
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->disposeCurrentMusic()V

    .line 791
    sget-object v0, Lcom/badlogic/gdx/Gdx;->audio:Lcom/badlogic/gdx/Audio;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "music/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->START_MUSIC:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Audio;->newMusic(Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/audio/Music;

    move-result-object v0

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->currentMusic:Lcom/badlogic/gdx/audio/Music;

    .line 793
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/audio/Music;->setLooping(Z)V

    .line 794
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->currentMusic:Lcom/badlogic/gdx/audio/Music;

    invoke-interface {v0}, Lcom/badlogic/gdx/audio/Music;->play()V

    .line 795
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->currentMusic:Lcom/badlogic/gdx/audio/Music;

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->musicVolume:F

    iget v2, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->masterVolume:F

    mul-float v1, v1, v2

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/audio/Music;->setVolume(F)V

    .line 797
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->currentMusic:Lcom/badlogic/gdx/audio/Music;

    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/SFXManager$17;

    invoke-direct {v1, p0}, Lage/of/civilizations2/jakowski/lukasz/SFXManager$17;-><init>(Lage/of/civilizations2/jakowski/lukasz/SFXManager;)V

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/audio/Music;->setOnCompletionListener(Lcom/badlogic/gdx/audio/Music$OnCompletionListener;)V
    :try_end_42
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_42} :catch_45
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_0 .. :try_end_42} :catch_43

    goto :goto_46

    .line 805
    :catch_43
    move-exception v0

    goto :goto_47

    .line 803
    :catch_45
    move-exception v0

    .line 807
    :goto_46
    nop

    .line 808
    :goto_47
    return-void
.end method

.method public final randomizePlayList()V
    .registers 6

    .line 301
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 303
    .local v0, "oR":Ljava/util/Random;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 305
    .local v1, "tempList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_b
    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->lTitles:Ljava/util/List;

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->stationID:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_31

    .line 306
    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->lTitles:Ljava/util/List;

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->stationID:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 305
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 309
    .end local v2  # "i":I
    :cond_31
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->lTitles:Ljava/util/List;

    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->stationID:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 311
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 313
    .local v2, "titles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_43
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5e

    .line 314
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    .line 316
    .local v3, "tempR":I
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 317
    invoke-interface {v1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 318
    .end local v3  # "tempR":I
    goto :goto_43

    .line 320
    :cond_5e
    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->lTitles:Ljava/util/List;

    iget v4, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->stationID:I

    invoke-interface {v3, v4, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 321
    return-void
.end method

.method public final setMasterVolume(F)V
    .registers 3
    .param p1, "masterVolume"  # F

    .line 924
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->masterVolume:F

    .line 926
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->getMusicVolume()F

    move-result v0

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->setMusicVolume(F)V

    .line 927
    return-void
.end method

.method public final setMusicVolume(F)V
    .registers 4
    .param p1, "nMusicVolume"  # F

    .line 895
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->musicVolume:F

    .line 898
    :try_start_2
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->currentMusic:Lcom/badlogic/gdx/audio/Music;

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->masterVolume:F

    mul-float v1, v1, p1

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/audio/Music;->setVolume(F)V

    .line 900
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->musicVolume:F

    const v1, 0x3c23d70a  # 0.01f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1a

    .line 901
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->currentMusic:Lcom/badlogic/gdx/audio/Music;

    invoke-interface {v0}, Lcom/badlogic/gdx/audio/Music;->pause()V

    goto :goto_27

    .line 903
    :cond_1a
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->currentMusic:Lcom/badlogic/gdx/audio/Music;

    invoke-interface {v0}, Lcom/badlogic/gdx/audio/Music;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_27

    .line 904
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->currentMusic:Lcom/badlogic/gdx/audio/Music;

    invoke-interface {v0}, Lcom/badlogic/gdx/audio/Music;->play()V
    :try_end_27
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_27} :catch_28

    .line 908
    :cond_27
    :goto_27
    goto :goto_29

    .line 906
    :catch_28
    move-exception v0

    .line 909
    :goto_29
    return-void
.end method

.method public final setSoundsVolume(F)V
    .registers 2
    .param p1, "soundsVolume"  # F

    .line 916
    iput p1, p0, Lage/of/civilizations2/jakowski/lukasz/SFXManager;->soundsVolume:F

    .line 917
    return-void
.end method
