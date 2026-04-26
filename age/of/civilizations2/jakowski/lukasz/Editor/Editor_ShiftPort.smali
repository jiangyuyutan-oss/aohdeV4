.class public Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ShiftPort;
.super Lage/of/civilizations2/jakowski/lukasz/Editor/Editor;
.source "Editor_ShiftPort.java"


# instance fields
.field private iDiff:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 21
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor;-><init>()V

    .line 23
    const/4 v0, 0x1

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ShiftPort;->iDiff:I

    return-void
.end method

.method public static final savePortPosition(II)V
    .registers 4
    .param p0, "tempX"  # I
    .param p1, "tempY"  # I

    .line 106
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getActiveProvID()I

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getProv(I)Lage/of/civilizations2/jakowski/lukasz/Province;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Province;->updateProvincePort(II)V

    .line 107
    return-void
.end method


# virtual methods
.method public keyDown(I)V
    .registers 12
    .param p1, "keycode"  # I

    .line 27
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getActiveProvID()I

    move-result v0

    if-ltz v0, :cond_134

    .line 28
    const/4 v0, 0x0

    .line 29
    .local v0, "tempX":I
    const/4 v1, 0x0

    .line 31
    .local v1, "tempY":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "map/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Map;->getFileActiveMapPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "data/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "provinces/"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getActiveProvID()I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    .line 34
    .local v2, "fileProvinceData":Lcom/badlogic/gdx/files/FileHandle;
    :try_start_3d
    invoke-virtual {v2}, Lcom/badlogic/gdx/files/FileHandle;->readBytes()[B

    move-result-object v6

    invoke-static {v6}, Lage/of/civilizations2/jakowski/lukasz/CFG;->deserialize([B)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/Province_GameData2;

    .line 36
    .local v6, "tData":Lage/of/civilizations2/jakowski/lukasz/Province_GameData2;
    iget v7, v6, Lage/of/civilizations2/jakowski/lukasz/Province_GameData2;->iPort_ShiftX:I

    move v0, v7

    .line 37
    iget v7, v6, Lage/of/civilizations2/jakowski/lukasz/Province_GameData2;->iPort_ShiftY:I

    move v1, v7

    .line 39
    sget-object v7, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    const/16 v8, 0x33

    invoke-interface {v7, v8}, Lcom/badlogic/gdx/Input;->isKeyPressed(I)Z

    move-result v7

    const/4 v8, 0x1

    if-eqz v7, :cond_5d

    .line 40
    iget v7, p0, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ShiftPort;->iDiff:I

    add-int/2addr v7, v8

    iput v7, p0, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ShiftPort;->iDiff:I

    .line 42
    :cond_5d
    sget-object v7, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    const/16 v9, 0x2d

    invoke-interface {v7, v9}, Lcom/badlogic/gdx/Input;->isKeyPressed(I)Z

    move-result v7

    if-eqz v7, :cond_70

    .line 43
    iget v7, p0, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ShiftPort;->iDiff:I

    sub-int/2addr v7, v8

    iput v7, p0, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ShiftPort;->iDiff:I

    .line 44
    if-ge v7, v8, :cond_70

    .line 45
    iput v8, p0, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ShiftPort;->iDiff:I

    .line 49
    :cond_70
    sget-object v7, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    const/16 v8, 0x15

    invoke-interface {v7, v8}, Lcom/badlogic/gdx/Input;->isKeyPressed(I)Z

    move-result v7

    if-eqz v7, :cond_7d

    .line 50
    iget v7, p0, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ShiftPort;->iDiff:I

    sub-int/2addr v0, v7

    .line 52
    :cond_7d
    sget-object v7, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    const/16 v8, 0x16

    invoke-interface {v7, v8}, Lcom/badlogic/gdx/Input;->isKeyPressed(I)Z

    move-result v7

    if-eqz v7, :cond_8a

    .line 53
    iget v7, p0, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ShiftPort;->iDiff:I

    add-int/2addr v0, v7

    .line 55
    :cond_8a
    sget-object v7, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    const/16 v8, 0x13

    invoke-interface {v7, v8}, Lcom/badlogic/gdx/Input;->isKeyPressed(I)Z

    move-result v7

    if-eqz v7, :cond_97

    .line 56
    iget v7, p0, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ShiftPort;->iDiff:I

    sub-int/2addr v1, v7

    .line 58
    :cond_97
    sget-object v7, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    const/16 v8, 0x14

    invoke-interface {v7, v8}, Lcom/badlogic/gdx/Input;->isKeyPressed(I)Z

    move-result v7

    if-eqz v7, :cond_a4

    .line 59
    iget v7, p0, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ShiftPort;->iDiff:I

    add-int/2addr v1, v7

    .line 62
    :cond_a4
    iput v0, v6, Lage/of/civilizations2/jakowski/lukasz/Province_GameData2;->iPort_ShiftX:I

    .line 63
    iput v1, v6, Lage/of/civilizations2/jakowski/lukasz/Province_GameData2;->iPort_ShiftY:I
    :try_end_a8
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3d .. :try_end_a8} :catch_12c
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_a8} :catch_123
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_3d .. :try_end_a8} :catch_11a

    .line 66
    const/4 v7, 0x0

    .line 69
    .local v7, "osProvince":Ljava/io/OutputStream;
    :try_start_a9
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->map:Lage/of/civilizations2/jakowski/lukasz/Map;

    invoke-virtual {v8}, Lage/of/civilizations2/jakowski/lukasz/Map;->getFileActiveMapPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getActiveProvID()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->getSaveType(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v3

    .line 70
    .local v3, "fileProvince":Lcom/badlogic/gdx/files/FileHandle;
    invoke-static {v6}, Lage/of/civilizations2/jakowski/lukasz/CFG;->serialize(Ljava/lang/Object;)[B

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/badlogic/gdx/files/FileHandle;->writeBytes([BZ)V
    :try_end_de
    .catch Ljava/io/IOException; {:try_start_a9 .. :try_end_de} :catch_ef
    .catchall {:try_start_a9 .. :try_end_de} :catchall_ed

    .line 76
    .end local v3  # "fileProvince":Lcom/badlogic/gdx/files/FileHandle;
    if-eqz v7, :cond_106

    .line 78
    :try_start_e0
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_e3
    .catch Ljava/lang/Exception; {:try_start_e0 .. :try_end_e3} :catch_e4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_e0 .. :try_end_e3} :catch_12c
    .catch Ljava/io/IOException; {:try_start_e0 .. :try_end_e3} :catch_123
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_e0 .. :try_end_e3} :catch_11a

    goto :goto_fc

    .line 79
    :catch_e4
    move-exception v3

    .line 80
    .local v3, "ex":Ljava/lang/Exception;
    :try_start_e5
    sget-boolean v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->LOGs:Z

    if-eqz v4, :cond_fc

    .line 81
    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V
    :try_end_ec
    .catch Ljava/lang/ClassNotFoundException; {:try_start_e5 .. :try_end_ec} :catch_12c
    .catch Ljava/io/IOException; {:try_start_e5 .. :try_end_ec} :catch_123
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_e5 .. :try_end_ec} :catch_11a

    goto :goto_fc

    .line 76
    .end local v3  # "ex":Ljava/lang/Exception;
    :catchall_ed
    move-exception v3

    goto :goto_10a

    .line 71
    :catch_ef
    move-exception v3

    .line 72
    .local v3, "ex":Ljava/io/IOException;
    :try_start_f0
    sget-boolean v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->LOGs:Z

    if-eqz v4, :cond_f7

    .line 73
    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V
    :try_end_f7
    .catchall {:try_start_f0 .. :try_end_f7} :catchall_ed

    .line 76
    .end local v3  # "ex":Ljava/io/IOException;
    :cond_f7
    if-eqz v7, :cond_106

    .line 78
    :try_start_f9
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_fc
    .catch Ljava/lang/Exception; {:try_start_f9 .. :try_end_fc} :catch_fd
    .catch Ljava/lang/ClassNotFoundException; {:try_start_f9 .. :try_end_fc} :catch_12c
    .catch Ljava/io/IOException; {:try_start_f9 .. :try_end_fc} :catch_123
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_f9 .. :try_end_fc} :catch_11a

    .line 83
    :cond_fc
    :goto_fc
    goto :goto_106

    .line 79
    :catch_fd
    move-exception v3

    .line 80
    .local v3, "ex":Ljava/lang/Exception;
    :try_start_fe
    sget-boolean v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->LOGs:Z

    if-eqz v4, :cond_fc

    .line 81
    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    goto :goto_fc

    .line 87
    .end local v3  # "ex":Ljava/lang/Exception;
    :cond_106
    :goto_106
    invoke-static {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ShiftPort;->savePortPosition(II)V
    :try_end_109
    .catch Ljava/lang/ClassNotFoundException; {:try_start_fe .. :try_end_109} :catch_12c
    .catch Ljava/io/IOException; {:try_start_fe .. :try_end_109} :catch_123
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_fe .. :try_end_109} :catch_11a

    .end local v6  # "tData":Lage/of/civilizations2/jakowski/lukasz/Province_GameData2;
    .end local v7  # "osProvince":Ljava/io/OutputStream;
    goto :goto_134

    .line 76
    .restart local v6  # "tData":Lage/of/civilizations2/jakowski/lukasz/Province_GameData2;
    .restart local v7  # "osProvince":Ljava/io/OutputStream;
    :goto_10a
    if-eqz v7, :cond_118

    .line 78
    :try_start_10c
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_10f
    .catch Ljava/lang/Exception; {:try_start_10c .. :try_end_10f} :catch_110
    .catch Ljava/lang/ClassNotFoundException; {:try_start_10c .. :try_end_10f} :catch_12c
    .catch Ljava/io/IOException; {:try_start_10c .. :try_end_10f} :catch_123
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_10c .. :try_end_10f} :catch_11a

    .line 83
    goto :goto_118

    .line 79
    :catch_110
    move-exception v4

    .line 80
    .local v4, "ex":Ljava/lang/Exception;
    :try_start_111
    sget-boolean v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->LOGs:Z

    if-eqz v5, :cond_118

    .line 81
    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 85
    .end local v4  # "ex":Ljava/lang/Exception;
    :cond_118
    :goto_118
    nop

    .end local v0  # "tempX":I
    .end local v1  # "tempY":I
    .end local v2  # "fileProvinceData":Lcom/badlogic/gdx/files/FileHandle;
    .end local p1  # "keycode":I
    throw v3
    :try_end_11a
    .catch Ljava/lang/ClassNotFoundException; {:try_start_111 .. :try_end_11a} :catch_12c
    .catch Ljava/io/IOException; {:try_start_111 .. :try_end_11a} :catch_123
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_111 .. :try_end_11a} :catch_11a

    .line 96
    .end local v6  # "tData":Lage/of/civilizations2/jakowski/lukasz/Province_GameData2;
    .end local v7  # "osProvince":Ljava/io/OutputStream;
    .restart local v0  # "tempX":I
    .restart local v1  # "tempY":I
    .restart local v2  # "fileProvinceData":Lcom/badlogic/gdx/files/FileHandle;
    .restart local p1  # "keycode":I
    :catch_11a
    move-exception v3

    .line 98
    .local v3, "e":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    sget-boolean v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->LOGs:Z

    if-eqz v4, :cond_134

    .line 99
    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    goto :goto_134

    .line 92
    .end local v3  # "e":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    :catch_123
    move-exception v3

    .line 93
    .local v3, "e":Ljava/io/IOException;
    sget-boolean v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->LOGs:Z

    if-eqz v4, :cond_134

    .line 94
    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    goto :goto_134

    .line 88
    .end local v3  # "e":Ljava/io/IOException;
    :catch_12c
    move-exception v3

    .line 89
    .local v3, "e":Ljava/lang/ClassNotFoundException;
    sget-boolean v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->LOGs:Z

    if-eqz v4, :cond_134

    .line 90
    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 103
    .end local v0  # "tempX":I
    .end local v1  # "tempY":I
    .end local v2  # "fileProvinceData":Lcom/badlogic/gdx/files/FileHandle;
    .end local v3  # "e":Ljava/lang/ClassNotFoundException;
    :cond_134
    :goto_134
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SHIFT PORT: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->core:Lage/of/civilizations2/jakowski/lukasz/Core/Core;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Core/Core;->getActiveProvID()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nSHIFT: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lage/of/civilizations2/jakowski/lukasz/Editor/Editor_ShiftPort;->iDiff:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Q--, W++"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
