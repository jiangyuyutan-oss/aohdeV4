.class public Lage/of/civilizations2/jakowski/lukasz/UnionsManager;
.super Ljava/lang/Object;
.source "UnionsManager.java"


# instance fields
.field public createUnion_Data:Lage/of/civilizations2/jakowski/lukasz/Union_GameData;

.field public unions:Lage/of/civilizations2/jakowski/lukasz/Unions_GameData;


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 25
    const-string v0, "game/unions/data"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    :try_start_5
    sget-boolean v1, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->IS_MAC:Z

    if-eqz v1, :cond_10

    .line 30
    sget-object v1, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/Files;->external(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    .local v1, "file":Lcom/badlogic/gdx/files/FileHandle;
    goto :goto_16

    .line 33
    .end local v1  # "file":Lcom/badlogic/gdx/files/FileHandle;
    :cond_10
    sget-object v1, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1
    :try_end_16
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_5 .. :try_end_16} :catch_28

    .line 37
    .restart local v1  # "file":Lcom/badlogic/gdx/files/FileHandle;
    :goto_16
    :try_start_16
    invoke-virtual {v1}, Lcom/badlogic/gdx/files/FileHandle;->readBytes()[B

    move-result-object v2

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/CFG;->deserialize([B)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Unions_GameData;

    iput-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/UnionsManager;->unions:Lage/of/civilizations2/jakowski/lukasz/Unions_GameData;
    :try_end_22
    .catch Ljava/lang/ClassNotFoundException; {:try_start_16 .. :try_end_22} :catch_25
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_22} :catch_23
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_16 .. :try_end_22} :catch_28

    goto :goto_26

    .line 40
    :catch_23
    move-exception v0

    goto :goto_27

    .line 38
    :catch_25
    move-exception v0

    .line 42
    :goto_26
    nop

    .line 53
    .end local v1  # "file":Lcom/badlogic/gdx/files/FileHandle;
    :goto_27
    goto :goto_3e

    .line 43
    :catch_28
    move-exception v1

    .line 44
    .local v1, "er":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    :try_start_29
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0
    :try_end_2d
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_29 .. :try_end_2d} :catch_3f

    .line 47
    .local v0, "file":Lcom/badlogic/gdx/files/FileHandle;
    :try_start_2d
    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->readBytes()[B

    move-result-object v2

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/CFG;->deserialize([B)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Unions_GameData;

    iput-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/UnionsManager;->unions:Lage/of/civilizations2/jakowski/lukasz/Unions_GameData;
    :try_end_39
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2d .. :try_end_39} :catch_3c
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_39} :catch_3a
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_2d .. :try_end_39} :catch_3f

    goto :goto_3d

    .line 50
    :catch_3a
    move-exception v2

    goto :goto_3e

    .line 48
    :catch_3c
    move-exception v2

    .line 52
    :goto_3d
    nop

    .line 56
    .end local v0  # "file":Lcom/badlogic/gdx/files/FileHandle;
    .end local v1  # "er":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    :goto_3e
    goto :goto_47

    .line 54
    :catch_3f
    move-exception v0

    .line 55
    .local v0, "e":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Unions_GameData;

    invoke-direct {v1}, Lage/of/civilizations2/jakowski/lukasz/Unions_GameData;-><init>()V

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/UnionsManager;->unions:Lage/of/civilizations2/jakowski/lukasz/Unions_GameData;

    .line 58
    .end local v0  # "e":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    :goto_47
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Button/Diplomacy/Button_Diplomacy_Migrate2;->updateT()V

    .line 59
    return-void
.end method


# virtual methods
.method public final getUnionTag(Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .param p1, "nTag"  # Ljava/lang/String;

    .line 88
    const-string v0, ";"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 90
    .local v0, "tData":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    array-length v2, v0

    if-ge v1, v2, :cond_17

    .line 91
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesMgr:Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;

    aget-object v3, v0, v1

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getRealTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 90
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 94
    .end local v1  # "i":I
    :cond_17
    const/4 v1, 0x0

    .restart local v1  # "i":I
    :goto_18
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/UnionsManager;->unions:Lage/of/civilizations2/jakowski/lukasz/Unions_GameData;

    iget-object v2, v2, Lage/of/civilizations2/jakowski/lukasz/Unions_GameData;->lUnions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const-string v3, ""

    if-ge v1, v2, :cond_c0

    .line 95
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_25
    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/UnionsManager;->unions:Lage/of/civilizations2/jakowski/lukasz/Unions_GameData;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Unions_GameData;->lUnions:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Union_GameData;

    iget-object v4, v4, Lage/of/civilizations2/jakowski/lukasz/Union_GameData;->lCivsTags:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_bc

    .line 96
    const/4 v4, 0x0

    .line 98
    .local v4, "found":Z
    const/4 v5, 0x0

    .local v5, "k":I
    :goto_39
    array-length v6, v0

    if-ge v5, v6, :cond_59

    .line 99
    aget-object v6, v0, v5

    iget-object v7, p0, Lage/of/civilizations2/jakowski/lukasz/UnionsManager;->unions:Lage/of/civilizations2/jakowski/lukasz/Unions_GameData;

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/Unions_GameData;->lUnions:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lage/of/civilizations2/jakowski/lukasz/Union_GameData;

    iget-object v7, v7, Lage/of/civilizations2/jakowski/lukasz/Union_GameData;->lCivsTags:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_56

    .line 100
    const/4 v4, 0x1

    .line 101
    goto :goto_59

    .line 98
    :cond_56
    add-int/lit8 v5, v5, 0x1

    goto :goto_39

    .line 105
    .end local v5  # "k":I
    :cond_59
    :goto_59
    if-eqz v4, :cond_bc

    .line 106
    iget-object v5, p0, Lage/of/civilizations2/jakowski/lukasz/UnionsManager;->unions:Lage/of/civilizations2/jakowski/lukasz/Unions_GameData;

    iget-object v5, v5, Lage/of/civilizations2/jakowski/lukasz/Unions_GameData;->lUnions:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/Union_GameData;

    iget-object v5, v5, Lage/of/civilizations2/jakowski/lukasz/Union_GameData;->lCivsTags:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ne v2, v5, :cond_b8

    array-length v5, v0

    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/UnionsManager;->unions:Lage/of/civilizations2/jakowski/lukasz/Unions_GameData;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/Unions_GameData;->lUnions:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/Union_GameData;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/Union_GameData;->lCivsTags:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ne v5, v6, :cond_b8

    .line 107
    const/4 v5, 0x0

    .restart local v5  # "k":I
    :goto_83
    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCivsSize()I

    move-result v6

    if-ge v5, v6, :cond_ab

    .line 108
    iget-object v6, p0, Lage/of/civilizations2/jakowski/lukasz/UnionsManager;->unions:Lage/of/civilizations2/jakowski/lukasz/Unions_GameData;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/Unions_GameData;->lUnions:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/Union_GameData;

    iget-object v6, v6, Lage/of/civilizations2/jakowski/lukasz/Union_GameData;->lCreateCivTag:Ljava/lang/String;

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v7, v5}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getCiv(I)Lage/of/civilizations2/jakowski/lukasz/Civilization;

    move-result-object v7

    invoke-virtual {v7}, Lage/of/civilizations2/jakowski/lukasz/Civilization;->getCivTag()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a8

    .line 109
    return-object v3

    .line 107
    :cond_a8
    add-int/lit8 v5, v5, 0x1

    goto :goto_83

    .line 113
    .end local v5  # "k":I
    :cond_ab
    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/UnionsManager;->unions:Lage/of/civilizations2/jakowski/lukasz/Unions_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Unions_GameData;->lUnions:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Union_GameData;

    iget-object v3, v3, Lage/of/civilizations2/jakowski/lukasz/Union_GameData;->lCreateCivTag:Ljava/lang/String;

    return-object v3

    .line 95
    .end local v4  # "found":Z
    :cond_b8
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_25

    .line 94
    .end local v2  # "j":I
    :cond_bc
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_18

    .line 121
    .end local v1  # "i":I
    :cond_c0
    return-object v3
.end method

.method public final saveUnions()V
    .registers 5

    .line 62
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/UnionsManager;->unions:Lage/of/civilizations2/jakowski/lukasz/Unions_GameData;

    iget-object v0, v0, Lage/of/civilizations2/jakowski/lukasz/Unions_GameData;->lUnions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_40

    .line 63
    const/4 v0, 0x0

    .line 67
    .local v0, "osData":Ljava/io/OutputStream;
    :try_start_b
    sget-boolean v1, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->IS_MAC:Z
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_d} :catch_37
    .catchall {:try_start_b .. :try_end_d} :catchall_2e

    const-string v2, "game/unions/data"

    if-eqz v1, :cond_18

    .line 68
    :try_start_11
    sget-object v1, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    invoke-interface {v1, v2}, Lcom/badlogic/gdx/Files;->external(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    .local v1, "fileUnions":Lcom/badlogic/gdx/files/FileHandle;
    goto :goto_1e

    .line 70
    .end local v1  # "fileUnions":Lcom/badlogic/gdx/files/FileHandle;
    :cond_18
    sget-object v1, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    invoke-interface {v1, v2}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    .line 72
    .restart local v1  # "fileUnions":Lcom/badlogic/gdx/files/FileHandle;
    :goto_1e
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/UnionsManager;->unions:Lage/of/civilizations2/jakowski/lukasz/Unions_GameData;

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/CFG;->serialize(Ljava/lang/Object;)[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/badlogic/gdx/files/FileHandle;->writeBytes([BZ)V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_28} :catch_37
    .catchall {:try_start_11 .. :try_end_28} :catchall_2e

    .line 76
    .end local v1  # "fileUnions":Lcom/badlogic/gdx/files/FileHandle;
    if-eqz v0, :cond_40

    .line 78
    :try_start_2a
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2d} :catch_3e

    goto :goto_3d

    .line 76
    :catchall_2e
    move-exception v1

    if-eqz v0, :cond_36

    .line 78
    :try_start_31
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_34} :catch_35

    .line 81
    goto :goto_36

    .line 79
    :catch_35
    move-exception v2

    .line 83
    :cond_36
    :goto_36
    throw v1

    .line 73
    :catch_37
    move-exception v1

    .line 76
    if-eqz v0, :cond_40

    .line 78
    :try_start_3a
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_3d} :catch_3e

    .line 81
    :goto_3d
    goto :goto_40

    .line 79
    :catch_3e
    move-exception v1

    goto :goto_3d

    .line 85
    .end local v0  # "osData":Ljava/io/OutputStream;
    :cond_40
    :goto_40
    return-void
.end method
