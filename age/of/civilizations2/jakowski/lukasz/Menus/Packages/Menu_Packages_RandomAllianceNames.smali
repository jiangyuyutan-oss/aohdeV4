.class public Lage/of/civilizations2/jakowski/lukasz/Menus/Packages/Menu_Packages_RandomAllianceNames;
.super Lage/of/civilizations2/jakowski/lukasz/Menu;
.source "Menu_Packages_RandomAllianceNames.java"


# instance fields
.field private lEnabled:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private lTags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 22

    .line 37
    move-object/from16 v10, p0

    invoke-direct/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Menu;-><init>()V

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v10, Lage/of/civilizations2/jakowski/lukasz/Menus/Packages/Menu_Packages_RandomAllianceNames;->lTags:Ljava/util/List;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v10, Lage/of/civilizations2/jakowski/lukasz/Menus/Packages/Menu_Packages_RandomAllianceNames;->lEnabled:Ljava/util/List;

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v11, v0

    .line 43
    .local v11, "menuElements":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;>;"
    new-instance v8, Lage/of/civilizations2/jakowski/lukasz/Button/Classic/Button_Classic_LR_Line;

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEWIDTH:I

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x1

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Button/Classic/Button_Classic_LR_Line;-><init>(Ljava/lang/String;IIIIIZ)V

    invoke-interface {v11, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Button/Classic/Button_Classic_LR_Line;

    sget v16, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    sget v17, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEWIDTH:I

    sget v18, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    const/4 v13, 0x0

    const/4 v14, -0x1

    const/4 v15, 0x0

    const/16 v19, 0x1

    move-object v12, v0

    invoke-direct/range {v12 .. v19}, Lage/of/civilizations2/jakowski/lukasz/Button/Classic/Button_Classic_LR_Line;-><init>(Ljava/lang/String;IIIIIZ)V

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    :try_start_3f
    const-string v0, "game/alliance_names/Age_of_Civilizations.json"

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 49
    .local v0, "file":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v1

    move-object v12, v1

    .line 50
    .local v12, "fileContent":Ljava/lang/String;
    new-instance v1, Lcom/badlogic/gdx/utils/Json;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/Json;-><init>()V

    move-object v13, v1

    .line 53
    .local v13, "json":Lcom/badlogic/gdx/utils/Json;
    const-class v1, Lage/of/civilizations2/jakowski/lukasz/CFG$ConfigAlliancesData;

    const-string v2, "Data_Random_Alliance_Names"

    const-class v3, Lage/of/civilizations2/jakowski/lukasz/CFG$Data_Random_Alliance_Names;

    invoke-virtual {v13, v1, v2, v3}, Lcom/badlogic/gdx/utils/Json;->setElementType(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)V

    .line 54
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/CFG$ConfigAlliancesData;

    invoke-direct {v1}, Lage/of/civilizations2/jakowski/lukasz/CFG$ConfigAlliancesData;-><init>()V

    .line 55
    .local v1, "data":Lage/of/civilizations2/jakowski/lukasz/CFG$ConfigAlliancesData;
    const-class v2, Lage/of/civilizations2/jakowski/lukasz/CFG$ConfigAlliancesData;

    invoke-virtual {v13, v2, v12}, Lcom/badlogic/gdx/utils/Json;->fromJson(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/CFG$ConfigAlliancesData;

    move-object v14, v2

    .line 57
    .end local v1  # "data":Lage/of/civilizations2/jakowski/lukasz/CFG$ConfigAlliancesData;
    .local v14, "data":Lage/of/civilizations2/jakowski/lukasz/CFG$ConfigAlliancesData;
    const/4 v1, 0x0

    .line 59
    .local v1, "tempI":I
    iget-object v2, v14, Lage/of/civilizations2/jakowski/lukasz/CFG$ConfigAlliancesData;->Data_Random_Alliance_Names:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    move/from16 v16, v1

    .end local v1  # "tempI":I
    .local v16, "tempI":I
    :goto_70
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_117

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v17, v1

    .line 60
    .local v17, "e":Ljava/lang/Object;
    move-object/from16 v1, v17

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/CFG$Data_Random_Alliance_Names;

    move-object v9, v1

    .line 62
    .local v9, "tempData":Lage/of/civilizations2/jakowski/lukasz/CFG$Data_Random_Alliance_Names;
    new-instance v8, Lage/of/civilizations2/jakowski/lukasz/Button/Classic/Button_Classic;

    iget-object v1, v9, Lage/of/civilizations2/jakowski/lukasz/CFG$Data_Random_Alliance_Names;->Tag:Ljava/lang/String;

    invoke-direct {v10, v1}, Lage/of/civilizations2/jakowski/lukasz/Menus/Packages/Menu_Packages_RandomAllianceNames;->getPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/high16 v1, 0x42480000  # 50.0f

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->GUI_SCALE:F

    mul-float v3, v3, v1

    float-to-int v3, v3

    const/4 v4, 0x0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    add-int/lit8 v5, v16, 0x1

    mul-int v1, v1, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    add-int/lit8 v6, v16, 0x2

    mul-int v5, v5, v6

    add-int/2addr v5, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEWIDTH:I

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_W:I

    mul-int/lit8 v6, v6, 0x2

    sub-int v6, v1, v6

    sget v7, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    const/16 v18, 0x1

    move-object v1, v8

    move-object/from16 v19, v0

    move-object v0, v8

    .end local v0  # "file":Lcom/badlogic/gdx/files/FileHandle;
    .local v19, "file":Lcom/badlogic/gdx/files/FileHandle;
    move/from16 v8, v18

    invoke-direct/range {v1 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Button/Classic/Button_Classic;-><init>(Ljava/lang/String;IIIIIZ)V

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Menus/Packages/Menu_Packages_RandomAllianceNames$1;

    iget-object v1, v9, Lage/of/civilizations2/jakowski/lukasz/CFG$Data_Random_Alliance_Names;->Tag:Ljava/lang/String;

    invoke-direct {v10, v1}, Lage/of/civilizations2/jakowski/lukasz/Menus/Packages/Menu_Packages_RandomAllianceNames;->getPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEWIDTH:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_W:I

    mul-int/lit8 v2, v2, 0x2

    sub-int v5, v1, v2

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    add-int/lit8 v2, v16, 0x1

    mul-int v1, v1, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    add-int/lit8 v6, v16, 0x2

    mul-int v2, v2, v6

    add-int v6, v1, v2

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_W:I

    mul-int/lit8 v7, v1, 0x2

    sget v8, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    const/16 v18, 0x1

    move-object v1, v0

    move-object/from16 v2, p0

    move-object/from16 v20, v12

    move-object v12, v9

    .end local v9  # "tempData":Lage/of/civilizations2/jakowski/lukasz/CFG$Data_Random_Alliance_Names;
    .local v12, "tempData":Lage/of/civilizations2/jakowski/lukasz/CFG$Data_Random_Alliance_Names;
    .local v20, "fileContent":Ljava/lang/String;
    move/from16 v9, v18

    invoke-direct/range {v1 .. v9}, Lage/of/civilizations2/jakowski/lukasz/Menus/Packages/Menu_Packages_RandomAllianceNames$1;-><init>(Lage/of/civilizations2/jakowski/lukasz/Menus/Packages/Menu_Packages_RandomAllianceNames;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    iget-boolean v1, v12, Lage/of/civilizations2/jakowski/lukasz/CFG$Data_Random_Alliance_Names;->Enabled:Z

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->setCheckboxSt(Z)V

    .line 72
    iget-object v0, v10, Lage/of/civilizations2/jakowski/lukasz/Menus/Packages/Menu_Packages_RandomAllianceNames;->lTags:Ljava/util/List;

    iget-object v1, v12, Lage/of/civilizations2/jakowski/lukasz/CFG$Data_Random_Alliance_Names;->Tag:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    iget-object v0, v10, Lage/of/civilizations2/jakowski/lukasz/Menus/Packages/Menu_Packages_RandomAllianceNames;->lEnabled:Ljava/util/List;

    iget-boolean v1, v12, Lage/of/civilizations2/jakowski/lukasz/CFG$Data_Random_Alliance_Names;->Enabled:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_10e
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_3f .. :try_end_10e} :catch_11c

    .line 75
    nop

    .end local v12  # "tempData":Lage/of/civilizations2/jakowski/lukasz/CFG$Data_Random_Alliance_Names;
    .end local v17  # "e":Ljava/lang/Object;
    add-int/lit8 v16, v16, 0x1

    .line 76
    move-object/from16 v0, v19

    move-object/from16 v12, v20

    goto/16 :goto_70

    .line 59
    .end local v19  # "file":Lcom/badlogic/gdx/files/FileHandle;
    .end local v20  # "fileContent":Ljava/lang/String;
    .restart local v0  # "file":Lcom/badlogic/gdx/files/FileHandle;
    .local v12, "fileContent":Ljava/lang/String;
    :cond_117
    move-object/from16 v19, v0

    move-object/from16 v20, v12

    .line 79
    .end local v0  # "file":Lcom/badlogic/gdx/files/FileHandle;
    .end local v12  # "fileContent":Ljava/lang/String;
    .end local v13  # "json":Lcom/badlogic/gdx/utils/Json;
    .end local v14  # "data":Lage/of/civilizations2/jakowski/lukasz/CFG$ConfigAlliancesData;
    .end local v16  # "tempI":I
    goto :goto_11d

    .line 77
    :catch_11c
    move-exception v0

    .line 81
    :goto_11d
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Title/TitleM;

    const/4 v0, 0x0

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x4

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3, v3}, Lage/of/civilizations2/jakowski/lukasz/Title/TitleM;-><init>(Ljava/lang/String;IZZ)V

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v4, v0, 0x4

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEWIDTH:I

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEHEIGHT:I

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x4

    sub-int v6, v0, v1

    move-object/from16 v1, p0

    move-object v7, v11

    invoke-virtual/range {v1 .. v7}, Lage/of/civilizations2/jakowski/lukasz/Menus/Packages/Menu_Packages_RandomAllianceNames;->initMenuWithBackButton(Lage/of/civilizations2/jakowski/lukasz/Title/TitleM;IIIILjava/util/List;)V

    .line 82
    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Packages/Menu_Packages_RandomAllianceNames;->updateLang()V

    .line 83
    return-void
.end method

.method private final getPackageName(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "nTag"  # Ljava/lang/String;

    .line 170
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "game/alliance_names/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 171
    .local v0, "file":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->readBytes()[B

    move-result-object v1

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->deserialize([B)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Alliances_Names_GameData;

    .line 173
    .local v1, "tempAllianceNamesData":Lage/of/civilizations2/jakowski/lukasz/Alliances_Names_GameData;
    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Alliances_Names_GameData;->getPackageName()Ljava/lang/String;

    move-result-object v2
    :try_end_25
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_25} :catch_28
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_25} :catch_26

    return-object v2

    .line 176
    .end local v0  # "file":Lcom/badlogic/gdx/files/FileHandle;
    .end local v1  # "tempAllianceNamesData":Lage/of/civilizations2/jakowski/lukasz/Alliances_Names_GameData;
    :catch_26
    move-exception v0

    goto :goto_2a

    .line 174
    :catch_28
    move-exception v0

    .line 178
    nop

    .line 180
    :goto_2a
    return-object p1
.end method

.method private final updateEnabled(IZ)V
    .registers 15
    .param p1, "i"  # I
    .param p2, "nValue"  # Z

    .line 139
    const-string v0, "game/alliance_names/Age_of_Civilizations.json"

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    .line 141
    .local v1, "file":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual {v1}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v2

    .line 142
    .local v2, "fileContent":Ljava/lang/String;
    new-instance v3, Lcom/badlogic/gdx/utils/Json;

    invoke-direct {v3}, Lcom/badlogic/gdx/utils/Json;-><init>()V

    .line 145
    .local v3, "json":Lcom/badlogic/gdx/utils/Json;
    const-class v4, Lage/of/civilizations2/jakowski/lukasz/CFG$ConfigAlliancesData;

    const-class v5, Lage/of/civilizations2/jakowski/lukasz/CFG$Data_Random_Alliance_Names;

    const-string v6, "Data_Random_Alliance_Names"

    invoke-virtual {v3, v4, v6, v5}, Lcom/badlogic/gdx/utils/Json;->setElementType(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)V

    .line 146
    new-instance v4, Lage/of/civilizations2/jakowski/lukasz/CFG$ConfigAlliancesData;

    invoke-direct {v4}, Lage/of/civilizations2/jakowski/lukasz/CFG$ConfigAlliancesData;-><init>()V

    .line 147
    .local v4, "data":Lage/of/civilizations2/jakowski/lukasz/CFG$ConfigAlliancesData;
    const-class v5, Lage/of/civilizations2/jakowski/lukasz/CFG$ConfigAlliancesData;

    invoke-virtual {v3, v5, v2}, Lcom/badlogic/gdx/utils/Json;->fromJson(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    move-object v4, v5

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/CFG$ConfigAlliancesData;

    .line 149
    new-instance v5, Lage/of/civilizations2/jakowski/lukasz/CFG$ConfigAlliancesData;

    invoke-direct {v5}, Lage/of/civilizations2/jakowski/lukasz/CFG$ConfigAlliancesData;-><init>()V

    .line 150
    .local v5, "configData":Lage/of/civilizations2/jakowski/lukasz/CFG$ConfigAlliancesData;
    const-string v7, "Data"

    iput-object v7, v5, Lage/of/civilizations2/jakowski/lukasz/CFG$ConfigAlliancesData;->Age_of_Civilizations:Ljava/lang/String;

    .line 152
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 153
    .local v7, "dataList":Ljava/util/ArrayList;
    iget-object v8, v4, Lage/of/civilizations2/jakowski/lukasz/CFG$ConfigAlliancesData;->Data_Random_Alliance_Names:Ljava/util/ArrayList;

    invoke-virtual {v8, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lage/of/civilizations2/jakowski/lukasz/CFG$Data_Random_Alliance_Names;

    .line 154
    .local v8, "tempUpdated":Lage/of/civilizations2/jakowski/lukasz/CFG$Data_Random_Alliance_Names;
    iput-boolean p2, v8, Lage/of/civilizations2/jakowski/lukasz/CFG$Data_Random_Alliance_Names;->Enabled:Z

    .line 155
    iget-object v9, v4, Lage/of/civilizations2/jakowski/lukasz/CFG$ConfigAlliancesData;->Data_Random_Alliance_Names:Ljava/util/ArrayList;

    invoke-virtual {v9, p1, v8}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 157
    iget-object v7, v4, Lage/of/civilizations2/jakowski/lukasz/CFG$ConfigAlliancesData;->Data_Random_Alliance_Names:Ljava/util/ArrayList;

    .line 158
    iput-object v7, v5, Lage/of/civilizations2/jakowski/lukasz/CFG$ConfigAlliancesData;->Data_Random_Alliance_Names:Ljava/util/ArrayList;

    .line 160
    new-instance v9, Lcom/badlogic/gdx/utils/Json;

    invoke-direct {v9}, Lcom/badlogic/gdx/utils/Json;-><init>()V

    .line 161
    .local v9, "jsonSave":Lcom/badlogic/gdx/utils/Json;
    sget-object v10, Lcom/badlogic/gdx/utils/JsonWriter$OutputType;->json:Lcom/badlogic/gdx/utils/JsonWriter$OutputType;

    invoke-virtual {v9, v10}, Lcom/badlogic/gdx/utils/Json;->setOutputType(Lcom/badlogic/gdx/utils/JsonWriter$OutputType;)V

    .line 162
    const-class v10, Lage/of/civilizations2/jakowski/lukasz/CFG$ConfigAlliancesData;

    const-class v11, Lage/of/civilizations2/jakowski/lukasz/CFG$Data_Random_Alliance_Names;

    invoke-virtual {v9, v10, v6, v11}, Lcom/badlogic/gdx/utils/Json;->setElementType(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)V

    .line 164
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->getSaveType(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 165
    .local v0, "fileSave":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual {v9, v5}, Lcom/badlogic/gdx/utils/Json;->prettyPrint(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v10, 0x0

    invoke-virtual {v0, v6, v10}, Lcom/badlogic/gdx/files/FileHandle;->writeString(Ljava/lang/String;Z)V

    .line 166
    return-void
.end method


# virtual methods
.method public final actionEL(I)V
    .registers 5
    .param p1, "iID"  # I

    .line 101
    packed-switch p1, :pswitch_data_114

    .line 112
    rem-int/lit8 v0, p1, 0x2

    if-nez v0, :cond_7e

    .line 114
    :try_start_7
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Packages/Menu_Packages_RandomAllianceNames;->lTags:Ljava/util/List;
    :try_end_9
    .catch Ljava/lang/ClassNotFoundException; {:try_start_7 .. :try_end_9} :catch_7b
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_9} :catch_79

    goto :goto_40

    .line 106
    :pswitch_a  #0x1
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Alliances_Names_GameData;

    invoke-direct {v0}, Lage/of/civilizations2/jakowski/lukasz/Alliances_Names_GameData;-><init>()V

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->editorAlliancesNames_GameData:Lage/of/civilizations2/jakowski/lukasz/Alliances_Names_GameData;

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->extraRandomTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->CREATE_PACKAGE_ALLIANCE_NAMES_GAME_DATA_TAG:Ljava/lang/String;

    .line 109
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eGAME_EDITOR_ALLIANCE_NAMES_PACKAGE_CREATE:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setMenuID(Lage/of/civilizations2/jakowski/lukasz/View;)V

    .line 110
    goto/16 :goto_113

    .line 103
    :pswitch_3b  #0x0
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Packages/Menu_Packages_RandomAllianceNames;->onBackPressed()V

    .line 104
    goto/16 :goto_113

    .line 114
    :goto_40
    add-int/lit8 v1, p1, -0x2

    :try_start_42
    div-int/lit8 v1, v1, 0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->CREATE_PACKAGE_ALLIANCE_NAMES_GAME_DATA_TAG:Ljava/lang/String;

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "game/alliance_names/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->CREATE_PACKAGE_ALLIANCE_NAMES_GAME_DATA_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 116
    .local v0, "file":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->readBytes()[B

    move-result-object v1

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/CFG;->deserialize([B)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Alliances_Names_GameData;

    sput-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->editorAlliancesNames_GameData:Lage/of/civilizations2/jakowski/lukasz/Alliances_Names_GameData;

    .line 118
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/View;->eGAME_EDITOR_ALLIANCE_NAMES_PACKAGE_CREATE:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setMenuID(Lage/of/civilizations2/jakowski/lukasz/View;)V
    :try_end_78
    .catch Ljava/lang/ClassNotFoundException; {:try_start_42 .. :try_end_78} :catch_7b
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_78} :catch_79

    .end local v0  # "file":Lcom/badlogic/gdx/files/FileHandle;
    goto :goto_7c

    .line 121
    :catch_79
    move-exception v0

    goto :goto_7c

    .line 119
    :catch_7b
    move-exception v0

    .line 123
    :goto_7c
    goto/16 :goto_113

    .line 126
    :cond_7e
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Packages/Menu_Packages_RandomAllianceNames;->lEnabled:Ljava/util/List;

    add-int/lit8 v1, p1, -0x2

    div-int/lit8 v1, v1, 0x2

    add-int/lit8 v2, p1, -0x2

    div-int/lit8 v2, v2, 0x2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 127
    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Menus/Packages/Menu_Packages_RandomAllianceNames;->getMenuElem(I)Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    move-result-object v0

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Packages/Menu_Packages_RandomAllianceNames;->lEnabled:Ljava/util/List;

    add-int/lit8 v2, p1, -0x2

    div-int/lit8 v2, v2, 0x2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_b6

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    const-string v2, "Disable"

    goto :goto_ba

    :cond_b6
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    const-string v2, "Enable"

    :goto_ba
    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->setTextE(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Menus/Packages/Menu_Packages_RandomAllianceNames;->getMenuElem(I)Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    move-result-object v0

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Packages/Menu_Packages_RandomAllianceNames;->lEnabled:Ljava/util/List;

    add-int/lit8 v2, p1, -0x2

    div-int/lit8 v2, v2, 0x2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->setCheckboxSt(Z)V

    .line 130
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->toastM:Lage/of/civilizations2/jakowski/lukasz/Toast;

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Packages/Menu_Packages_RandomAllianceNames;->lEnabled:Ljava/util/List;

    add-int/lit8 v2, p1, -0x2

    div-int/lit8 v2, v2, 0x2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_f1

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    const-string v2, "Enabled"

    goto :goto_f5

    :cond_f1
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    const-string v2, "Disabled"

    :goto_f5
    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Toast;->addM(Ljava/lang/String;)V

    .line 132
    add-int/lit8 v0, p1, -0x2

    div-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Packages/Menu_Packages_RandomAllianceNames;->lEnabled:Ljava/util/List;

    add-int/lit8 v2, p1, -0x2

    div-int/lit8 v2, v2, 0x2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Menus/Packages/Menu_Packages_RandomAllianceNames;->updateEnabled(IZ)V

    .line 136
    :goto_113
    return-void

    :pswitch_data_114
    .packed-switch 0x0
        :pswitch_3b  #00000000
        :pswitch_a  #00000001
    .end packed-switch
.end method

.method public final onBackPressed()V
    .registers 3

    .line 185
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/View;->eGAME_EDITOR:Lage/of/civilizations2/jakowski/lukasz/View;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setMenuID(Lage/of/civilizations2/jakowski/lukasz/View;)V

    .line 186
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->menus:Lage/of/civilizations2/jakowski/lukasz/MenuManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/MenuManager;->setBackAnimation(Z)V

    .line 188
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->loadRandomAlliancesNames()V

    .line 189
    return-void
.end method

.method public updateLang()V
    .registers 5

    .line 87
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Packages/Menu_Packages_RandomAllianceNames;->getMenuElem(I)Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    const-string v2, "Back"

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->setTextE(Ljava/lang/String;)V

    .line 88
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Packages/Menu_Packages_RandomAllianceNames;->getMenuElem(I)Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    const-string v2, "CreateNewPackage"

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->setTextE(Ljava/lang/String;)V

    .line 90
    const/4 v0, 0x3

    .local v0, "i":I
    :goto_21
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Packages/Menu_Packages_RandomAllianceNames;->getMenuElemsSize()I

    move-result v1

    if-ge v0, v1, :cond_50

    .line 91
    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Packages/Menu_Packages_RandomAllianceNames;->getMenuElem(I)Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    move-result-object v1

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Packages/Menu_Packages_RandomAllianceNames;->lEnabled:Ljava/util/List;

    add-int/lit8 v3, v0, -0x2

    div-int/lit8 v3, v3, 0x2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_42

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    const-string v3, "Disable"

    goto :goto_46

    :cond_42
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    const-string v3, "Enable"

    :goto_46
    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->setTextE(Ljava/lang/String;)V

    .line 90
    add-int/lit8 v0, v0, 0x2

    goto :goto_21

    .line 94
    .end local v0  # "i":I
    :cond_50
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Menus/Packages/Menu_Packages_RandomAllianceNames;->getTitleM()Lage/of/civilizations2/jakowski/lukasz/Title/TitleM;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    const-string v2, "RandomAlliancesNamesPackages"

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Title/TitleM;->setText(Ljava/lang/String;)V

    .line 95
    return-void
.end method
