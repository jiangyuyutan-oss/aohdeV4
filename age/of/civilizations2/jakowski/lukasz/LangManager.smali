.class public Lage/of/civilizations2/jakowski/lukasz/LangManager;
.super Ljava/lang/Object;
.source "LangManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lage/of/civilizations2/jakowski/lukasz/LangManager$KeyOutput;
    }
.end annotation


# static fields
.field public static translationsKeysMode:Z


# instance fields
.field private bundle:Lcom/badlogic/gdx/utils/I18NBundle;

.field private bundleCivs:Lcom/badlogic/gdx/utils/I18NBundle;

.field private bundleFormable:Lcom/badlogic/gdx/utils/I18NBundle;

.field private bundleLoading:Lcom/badlogic/gdx/utils/I18NBundle;

.field private fileHandle:Lcom/badlogic/gdx/files/FileHandle;

.field private fileHandleCivs:Lcom/badlogic/gdx/files/FileHandle;

.field private fileHandleFormable:Lcom/badlogic/gdx/files/FileHandle;

.field private fileHandleLoading:Lcom/badlogic/gdx/files/FileHandle;

.field public iLNOT:I

.field private keyOutput:Lage/of/civilizations2/jakowski/lukasz/LangManager$KeyOutput;

.field private locale:Ljava/util/Locale;

.field private localeCivs:Ljava/util/Locale;

.field private localeFormable:Ljava/util/Locale;

.field private localeLoading:Ljava/util/Locale;

.field public modsBundles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/badlogic/gdx/utils/I18NBundle;",
            ">;"
        }
    .end annotation
.end field

.field public modsBundlesSize:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 23
    const/4 v0, 0x0

    sput-boolean v0, Lage/of/civilizations2/jakowski/lukasz/LangManager;->translationsKeysMode:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "nTag"  # Ljava/lang/String;

    .line 336
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 209
    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/LangManager;->iLNOT:I

    .line 331
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/LangManager;->modsBundles:Ljava/util/List;

    .line 332
    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/LangManager;->modsBundlesSize:I

    .line 337
    const-string v0, "game/languages/Bundle"

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/LangManager;->fileHandle:Lcom/badlogic/gdx/files/FileHandle;

    .line 338
    new-instance v0, Ljava/util/Locale;

    invoke-direct {v0, p1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/LangManager;->locale:Ljava/util/Locale;

    .line 341
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/LangManager;->fileHandle:Lcom/badlogic/gdx/files/FileHandle;

    invoke-static {v1, v0}, Lcom/badlogic/gdx/utils/I18NBundle;->createBundle(Lcom/badlogic/gdx/files/FileHandle;Ljava/util/Locale;)Lcom/badlogic/gdx/utils/I18NBundle;

    move-result-object v0

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/LangManager;->bundle:Lcom/badlogic/gdx/utils/I18NBundle;

    .line 343
    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->initCivsBundle(Ljava/lang/String;)V

    .line 344
    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->initLoadingBundle(Ljava/lang/String;)V

    .line 346
    invoke-virtual {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->loadModsLanguages(Ljava/lang/String;)V

    .line 348
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->updateKeyOutput()V

    .line 349
    return-void
.end method

.method static synthetic access$000(Lage/of/civilizations2/jakowski/lukasz/LangManager;)Lcom/badlogic/gdx/utils/I18NBundle;
    .registers 2
    .param p0, "x0"  # Lage/of/civilizations2/jakowski/lukasz/LangManager;

    .line 21
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/LangManager;->bundle:Lcom/badlogic/gdx/utils/I18NBundle;

    return-object v0
.end method


# virtual methods
.method public final dispose()V
    .registers 2

    .line 385
    const/4 v0, 0x0

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/LangManager;->fileHandle:Lcom/badlogic/gdx/files/FileHandle;

    .line 386
    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/LangManager;->locale:Ljava/util/Locale;

    .line 387
    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/LangManager;->bundle:Lcom/badlogic/gdx/utils/I18NBundle;

    .line 389
    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/LangManager;->fileHandleCivs:Lcom/badlogic/gdx/files/FileHandle;

    .line 390
    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/LangManager;->localeCivs:Ljava/util/Locale;

    .line 391
    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/LangManager;->bundleCivs:Lcom/badlogic/gdx/utils/I18NBundle;

    .line 393
    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/LangManager;->fileHandleLoading:Lcom/badlogic/gdx/files/FileHandle;

    .line 394
    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/LangManager;->localeLoading:Ljava/util/Locale;

    .line 395
    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/LangManager;->bundleLoading:Lcom/badlogic/gdx/utils/I18NBundle;

    .line 397
    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/LangManager;->fileHandleFormable:Lcom/badlogic/gdx/files/FileHandle;

    .line 398
    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/LangManager;->localeFormable:Ljava/util/Locale;

    .line 399
    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/LangManager;->bundleFormable:Lcom/badlogic/gdx/utils/I18NBundle;

    .line 400
    return-void
.end method

.method public get(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "key"  # Ljava/lang/String;

    .line 35
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/LangManager;->keyOutput:Lage/of/civilizations2/jakowski/lukasz/LangManager$KeyOutput;

    invoke-interface {v0, p1}, Lage/of/civilizations2/jakowski/lukasz/LangManager$KeyOutput;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/String;I)Ljava/lang/String;
    .registers 4
    .param p1, "key"  # Ljava/lang/String;
    .param p2, "nValue"  # I

    .line 39
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/LangManager;->keyOutput:Lage/of/civilizations2/jakowski/lukasz/LangManager$KeyOutput;

    invoke-interface {v0, p1, p2}, Lage/of/civilizations2/jakowski/lukasz/LangManager$KeyOutput;->get(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "key"  # Ljava/lang/String;
    .param p2, "nValue"  # Ljava/lang/String;

    .line 43
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/LangManager;->keyOutput:Lage/of/civilizations2/jakowski/lukasz/LangManager$KeyOutput;

    invoke-interface {v0, p1, p2}, Lage/of/civilizations2/jakowski/lukasz/LangManager$KeyOutput;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "key"  # Ljava/lang/String;
    .param p2, "nValue"  # Ljava/lang/String;
    .param p3, "nValue2"  # Ljava/lang/String;

    .line 47
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/LangManager;->keyOutput:Lage/of/civilizations2/jakowski/lukasz/LangManager$KeyOutput;

    invoke-interface {v0, p1, p2, p3}, Lage/of/civilizations2/jakowski/lukasz/LangManager$KeyOutput;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCiv(Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p1, "key"  # Ljava/lang/String;

    .line 52
    const/4 v0, 0x0

    const/16 v1, 0x5f

    if-eqz p1, :cond_77

    .line 53
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_6
    :try_start_6
    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/LangManager;->modsBundlesSize:I
    :try_end_8
    .catch Ljava/util/MissingResourceException; {:try_start_6 .. :try_end_8} :catch_7e

    if-ge v2, v3, :cond_1c

    .line 55
    :try_start_a
    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/LangManager;->modsBundles:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/utils/I18NBundle;

    invoke-virtual {v3, p1}, Lcom/badlogic/gdx/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_16} :catch_17
    .catch Ljava/util/MissingResourceException; {:try_start_a .. :try_end_16} :catch_7e

    return-object v0

    .line 56
    :catch_17
    move-exception v3

    .line 57
    .local v3, "ex":Ljava/lang/Exception;
    nop

    .line 53
    .end local v3  # "ex":Ljava/lang/Exception;
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 61
    .end local v2  # "i":I
    :cond_1c
    const/4 v2, 0x0

    .restart local v2  # "i":I
    :goto_1d
    :try_start_1d
    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/LangManager;->modsBundlesSize:I
    :try_end_1f
    .catch Ljava/util/MissingResourceException; {:try_start_1d .. :try_end_1f} :catch_7e

    if-ge v2, v3, :cond_51

    .line 63
    :try_start_21
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v3
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_25} :catch_4c
    .catch Ljava/util/MissingResourceException; {:try_start_21 .. :try_end_25} :catch_7e

    if-lez v3, :cond_4b

    .line 65
    :try_start_27
    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/LangManager;->modsBundles:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/utils/I18NBundle;

    invoke-virtual {v3, p1}, Lcom/badlogic/gdx/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_33} :catch_34
    .catch Ljava/util/MissingResourceException; {:try_start_27 .. :try_end_33} :catch_7e

    return-object v0

    .line 66
    :catch_34
    move-exception v3

    .line 71
    :try_start_35
    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/LangManager;->modsBundles:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/utils/I18NBundle;

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    invoke-virtual {p1, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_49} :catch_4a
    .catch Ljava/util/MissingResourceException; {:try_start_35 .. :try_end_49} :catch_7e

    return-object v0

    .line 72
    :catch_4a
    move-exception v3

    .line 78
    :cond_4b
    goto :goto_4e

    .line 76
    :catch_4c
    move-exception v3

    .line 77
    .local v3, "exr":Ljava/lang/Exception;
    nop

    .line 61
    .end local v3  # "exr":Ljava/lang/Exception;
    :goto_4e
    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    .line 81
    .end local v2  # "i":I
    :cond_51
    :try_start_51
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2
    :try_end_55
    .catch Ljava/util/MissingResourceException; {:try_start_51 .. :try_end_55} :catch_7e

    if-lez v2, :cond_70

    .line 83
    :try_start_57
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/LangManager;->bundleCivs:Lcom/badlogic/gdx/utils/I18NBundle;

    invoke-virtual {v2, p1}, Lcom/badlogic/gdx/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_5d} :catch_5e
    .catch Ljava/util/MissingResourceException; {:try_start_57 .. :try_end_5d} :catch_7e

    return-object v0

    .line 84
    :catch_5e
    move-exception v2

    .line 89
    :try_start_5f
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/LangManager;->bundleCivs:Lcom/badlogic/gdx/utils/I18NBundle;

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_6d} :catch_6e
    .catch Ljava/util/MissingResourceException; {:try_start_5f .. :try_end_6d} :catch_7e

    return-object v0

    .line 90
    :catch_6e
    move-exception v2

    .line 92
    goto :goto_77

    .line 95
    :cond_70
    :try_start_70
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/LangManager;->bundleCivs:Lcom/badlogic/gdx/utils/I18NBundle;

    invoke-virtual {v2, p1}, Lcom/badlogic/gdx/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 99
    :cond_77
    :goto_77
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/LangManager;->bundleCivs:Lcom/badlogic/gdx/utils/I18NBundle;

    invoke-virtual {v2, p1}, Lcom/badlogic/gdx/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_7d
    .catch Ljava/util/MissingResourceException; {:try_start_70 .. :try_end_7d} :catch_7e

    return-object v0

    .line 100
    :catch_7e
    move-exception v2

    .line 101
    .local v2, "ex":Ljava/util/MissingResourceException;
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-lez v3, :cond_95

    .line 103
    :try_start_85
    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/LangManager;->bundleCivs:Lcom/badlogic/gdx/utils/I18NBundle;

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/badlogic/gdx/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_93
    .catch Ljava/util/MissingResourceException; {:try_start_85 .. :try_end_93} :catch_94

    return-object v0

    .line 104
    :catch_94
    move-exception v0

    .line 110
    :cond_95
    :try_start_95
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->isAndroid()Z

    move-result v0
    :try_end_99
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_95 .. :try_end_99} :catch_13a

    const-string v1, "_NM"

    const-string v3, "/"

    const-string v4, "game/civilizations_editor/"

    if-eqz v0, :cond_108

    .line 112
    :try_start_a1
    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesMgr:Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;

    invoke-virtual {v6, p1}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getRealTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesMgr:Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;

    invoke-virtual {v6, p1}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getRealTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 113
    .local v0, "file":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v1
    :try_end_d4
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_a1 .. :try_end_d4} :catch_d5

    return-object v1

    .line 114
    .end local v0  # "file":Lcom/badlogic/gdx/files/FileHandle;
    :catch_d5
    move-exception v0

    .line 115
    .local v0, "er":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    :try_start_d6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesMgr:Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;

    invoke-virtual {v5, p1}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getRealTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesMgr:Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;

    invoke-virtual {v4, p1}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getRealTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    .line 116
    .local v1, "file":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual {v1}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 119
    .end local v0  # "er":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    .end local v1  # "file":Lcom/badlogic/gdx/files/FileHandle;
    :cond_108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesMgr:Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;

    invoke-virtual {v4, p1}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getRealTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->ideologiesMgr:Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;

    invoke-virtual {v3, p1}, Lage/of/civilizations2/jakowski/lukasz/IdeologiesManager;->getRealTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 120
    .local v0, "file":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v1
    :try_end_139
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_d6 .. :try_end_139} :catch_13a

    return-object v1

    .line 122
    .end local v0  # "file":Lcom/badlogic/gdx/files/FileHandle;
    :catch_13a
    move-exception v0

    .line 127
    return-object p1
.end method

.method public getForm(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "key"  # Ljava/lang/String;

    .line 133
    const/4 v0, 0x0

    const/16 v1, 0x5f

    if-eqz p1, :cond_77

    .line 134
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_6
    :try_start_6
    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/LangManager;->modsBundlesSize:I
    :try_end_8
    .catch Ljava/util/MissingResourceException; {:try_start_6 .. :try_end_8} :catch_7e

    if-ge v2, v3, :cond_1c

    .line 136
    :try_start_a
    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/LangManager;->modsBundles:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/utils/I18NBundle;

    invoke-virtual {v3, p1}, Lcom/badlogic/gdx/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_16} :catch_17
    .catch Ljava/util/MissingResourceException; {:try_start_a .. :try_end_16} :catch_7e

    return-object v0

    .line 137
    :catch_17
    move-exception v3

    .line 138
    .local v3, "ex":Ljava/lang/Exception;
    nop

    .line 134
    .end local v3  # "ex":Ljava/lang/Exception;
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 142
    .end local v2  # "i":I
    :cond_1c
    const/4 v2, 0x0

    .restart local v2  # "i":I
    :goto_1d
    :try_start_1d
    iget v3, p0, Lage/of/civilizations2/jakowski/lukasz/LangManager;->modsBundlesSize:I
    :try_end_1f
    .catch Ljava/util/MissingResourceException; {:try_start_1d .. :try_end_1f} :catch_7e

    if-ge v2, v3, :cond_51

    .line 144
    :try_start_21
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v3
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_25} :catch_4c
    .catch Ljava/util/MissingResourceException; {:try_start_21 .. :try_end_25} :catch_7e

    if-lez v3, :cond_4b

    .line 146
    :try_start_27
    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/LangManager;->modsBundles:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/utils/I18NBundle;

    invoke-virtual {v3, p1}, Lcom/badlogic/gdx/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_33} :catch_34
    .catch Ljava/util/MissingResourceException; {:try_start_27 .. :try_end_33} :catch_7e

    return-object v0

    .line 147
    :catch_34
    move-exception v3

    .line 152
    :try_start_35
    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/LangManager;->modsBundles:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/utils/I18NBundle;

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    invoke-virtual {p1, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_49} :catch_4a
    .catch Ljava/util/MissingResourceException; {:try_start_35 .. :try_end_49} :catch_7e

    return-object v0

    .line 153
    :catch_4a
    move-exception v3

    .line 159
    :cond_4b
    goto :goto_4e

    .line 157
    :catch_4c
    move-exception v3

    .line 158
    .local v3, "exr":Ljava/lang/Exception;
    nop

    .line 142
    .end local v3  # "exr":Ljava/lang/Exception;
    :goto_4e
    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    .line 162
    .end local v2  # "i":I
    :cond_51
    :try_start_51
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2
    :try_end_55
    .catch Ljava/util/MissingResourceException; {:try_start_51 .. :try_end_55} :catch_7e

    if-lez v2, :cond_70

    .line 164
    :try_start_57
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/LangManager;->bundleFormable:Lcom/badlogic/gdx/utils/I18NBundle;

    invoke-virtual {v2, p1}, Lcom/badlogic/gdx/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_5d} :catch_5e
    .catch Ljava/util/MissingResourceException; {:try_start_57 .. :try_end_5d} :catch_7e

    return-object v0

    .line 165
    :catch_5e
    move-exception v2

    .line 170
    :try_start_5f
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/LangManager;->bundleFormable:Lcom/badlogic/gdx/utils/I18NBundle;

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_6d} :catch_6e
    .catch Ljava/util/MissingResourceException; {:try_start_5f .. :try_end_6d} :catch_7e

    return-object v0

    .line 171
    :catch_6e
    move-exception v2

    .line 173
    goto :goto_77

    .line 176
    :cond_70
    :try_start_70
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/LangManager;->bundleFormable:Lcom/badlogic/gdx/utils/I18NBundle;

    invoke-virtual {v2, p1}, Lcom/badlogic/gdx/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 180
    :cond_77
    :goto_77
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/LangManager;->bundleFormable:Lcom/badlogic/gdx/utils/I18NBundle;

    invoke-virtual {v2, p1}, Lcom/badlogic/gdx/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_7d
    .catch Ljava/util/MissingResourceException; {:try_start_70 .. :try_end_7d} :catch_7e

    return-object v0

    .line 181
    :catch_7e
    move-exception v2

    .line 182
    .local v2, "ex":Ljava/util/MissingResourceException;
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-lez v3, :cond_95

    .line 184
    :try_start_85
    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/LangManager;->bundleFormable:Lcom/badlogic/gdx/utils/I18NBundle;

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/badlogic/gdx/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_93
    .catch Ljava/util/MissingResourceException; {:try_start_85 .. :try_end_93} :catch_94

    return-object v0

    .line 185
    :catch_94
    move-exception v0

    .line 191
    :cond_95
    return-object p1
.end method

.method public getLOA(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "key"  # Ljava/lang/String;

    .line 198
    const-string v0, ""

    :try_start_2
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/LangManager;->bundleLoading:Lcom/badlogic/gdx/utils/I18NBundle;

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_8
    .catch Ljava/util/MissingResourceException; {:try_start_2 .. :try_end_8} :catch_f
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_8} :catch_9

    return-object v0

    .line 201
    :catch_9
    move-exception v1

    .line 202
    .local v1, "ex":Ljava/lang/NullPointerException;
    const-wide/16 v2, 0x0

    sput-wide v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->loaTM:J

    .line 203
    return-object v0

    .line 199
    .end local v1  # "ex":Ljava/lang/NullPointerException;
    :catch_f
    move-exception v1

    .line 200
    .local v1, "ex":Ljava/util/MissingResourceException;
    return-object v0
.end method

.method public final initCivsBundle(Ljava/lang/String;)V
    .registers 4
    .param p1, "nTag"  # Ljava/lang/String;

    .line 353
    const-string v0, "game/languages/civilizations/Bundle"

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/LangManager;->fileHandleCivs:Lcom/badlogic/gdx/files/FileHandle;

    .line 354
    new-instance v0, Ljava/util/Locale;

    invoke-direct {v0, p1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/LangManager;->localeCivs:Ljava/util/Locale;

    .line 357
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/LangManager;->fileHandleCivs:Lcom/badlogic/gdx/files/FileHandle;

    invoke-static {v1, v0}, Lcom/badlogic/gdx/utils/I18NBundle;->createBundle(Lcom/badlogic/gdx/files/FileHandle;Ljava/util/Locale;)Lcom/badlogic/gdx/utils/I18NBundle;

    move-result-object v0

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/LangManager;->bundleCivs:Lcom/badlogic/gdx/utils/I18NBundle;

    .line 360
    const-string v0, "game/languages/formable/Bundle"

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/LangManager;->fileHandleFormable:Lcom/badlogic/gdx/files/FileHandle;

    .line 361
    new-instance v0, Ljava/util/Locale;

    invoke-direct {v0, p1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/LangManager;->localeFormable:Ljava/util/Locale;

    .line 364
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/LangManager;->fileHandleFormable:Lcom/badlogic/gdx/files/FileHandle;

    invoke-static {v1, v0}, Lcom/badlogic/gdx/utils/I18NBundle;->createBundle(Lcom/badlogic/gdx/files/FileHandle;Ljava/util/Locale;)Lcom/badlogic/gdx/utils/I18NBundle;

    move-result-object v0

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/LangManager;->bundleFormable:Lcom/badlogic/gdx/utils/I18NBundle;

    .line 365
    return-void
.end method

.method public final initLoadingBundle(Ljava/lang/String;)V
    .registers 4
    .param p1, "nTag"  # Ljava/lang/String;

    .line 369
    const-string v0, "game/languages/loading/Bundle"

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/Files/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/LangManager;->fileHandleLoading:Lcom/badlogic/gdx/files/FileHandle;

    .line 370
    new-instance v0, Ljava/util/Locale;

    invoke-direct {v0, p1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/LangManager;->localeLoading:Ljava/util/Locale;

    .line 373
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/LangManager;->fileHandleLoading:Lcom/badlogic/gdx/files/FileHandle;

    invoke-static {v1, v0}, Lcom/badlogic/gdx/utils/I18NBundle;->createBundle(Lcom/badlogic/gdx/files/FileHandle;Ljava/util/Locale;)Lcom/badlogic/gdx/utils/I18NBundle;

    move-result-object v0

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/LangManager;->bundleLoading:Lcom/badlogic/gdx/utils/I18NBundle;

    .line 378
    :try_start_17
    const-string v0, "NumOfTexts"

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->getLOA(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/LangManager;->iLNOT:I
    :try_end_23
    .catch Ljava/lang/IllegalArgumentException; {:try_start_17 .. :try_end_23} :catch_24

    .line 381
    goto :goto_28

    .line 379
    :catch_24
    move-exception v0

    .line 380
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    const/4 v1, 0x0

    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/LangManager;->iLNOT:I

    .line 382
    .end local v0  # "ex":Ljava/lang/IllegalArgumentException;
    :goto_28
    return-void
.end method

.method public loadModsLanguages(Ljava/lang/String;)V
    .registers 12
    .param p1, "nTag"  # Ljava/lang/String;

    .line 404
    const-string v0, "/"

    :try_start_2
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/LangManager;->modsBundles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 406
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    sget v2, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->sUFS:I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_a} :catch_26a

    const-string v3, ""

    const-string v4, "_"

    const-string v5, ".properties"

    const-string v6, "languages/Bundle"

    if-ge v1, v2, :cond_18a

    .line 407
    :try_start_14
    sget-object v2, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->sUF:Ljava/util/List;

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v7}, Lcom/badlogic/gdx/Files;->external(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v2

    if-eqz v2, :cond_75

    .line 408
    sget-object v2, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->sUF:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/badlogic/gdx/Files;->external(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    .line 409
    .local v2, "fileHandleCivs":Lcom/badlogic/gdx/files/FileHandle;
    new-instance v3, Ljava/util/Locale;

    invoke-direct {v3, p1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 410
    .local v3, "localeCivs":Ljava/util/Locale;
    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/LangManager;->modsBundles:Ljava/util/List;

    invoke-static {v2, v3}, Lcom/badlogic/gdx/utils/I18NBundle;->createBundle(Lcom/badlogic/gdx/files/FileHandle;Ljava/util/Locale;)Lcom/badlogic/gdx/utils/I18NBundle;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 411
    nop

    .end local v2  # "fileHandleCivs":Lcom/badlogic/gdx/files/FileHandle;
    .end local v3  # "localeCivs":Ljava/util/Locale;
    goto/16 :goto_186

    .line 412
    :cond_75
    sget-object v2, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->sUF:Ljava/util/List;

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v7}, Lcom/badlogic/gdx/Files;->external(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v2

    if-eqz v2, :cond_cf

    .line 413
    sget-object v2, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->sUF:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/badlogic/gdx/Files;->external(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    .line 414
    .restart local v2  # "fileHandleCivs":Lcom/badlogic/gdx/files/FileHandle;
    new-instance v4, Ljava/util/Locale;

    invoke-direct {v4, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    move-object v3, v4

    .line 415
    .restart local v3  # "localeCivs":Ljava/util/Locale;
    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/LangManager;->modsBundles:Ljava/util/List;

    invoke-static {v2, v3}, Lcom/badlogic/gdx/utils/I18NBundle;->createBundle(Lcom/badlogic/gdx/files/FileHandle;Ljava/util/Locale;)Lcom/badlogic/gdx/utils/I18NBundle;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 416
    nop

    .end local v2  # "fileHandleCivs":Lcom/badlogic/gdx/files/FileHandle;
    .end local v3  # "localeCivs":Ljava/util/Locale;
    goto/16 :goto_186

    .line 417
    :cond_cf
    sget-object v2, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->sUF:Ljava/util/List;

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v2

    if-eqz v2, :cond_12f

    .line 418
    sget-object v2, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->sUF:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    .line 419
    .restart local v2  # "fileHandleCivs":Lcom/badlogic/gdx/files/FileHandle;
    new-instance v3, Ljava/util/Locale;

    invoke-direct {v3, p1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 420
    .restart local v3  # "localeCivs":Ljava/util/Locale;
    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/LangManager;->modsBundles:Ljava/util/List;

    invoke-static {v2, v3}, Lcom/badlogic/gdx/utils/I18NBundle;->createBundle(Lcom/badlogic/gdx/files/FileHandle;Ljava/util/Locale;)Lcom/badlogic/gdx/utils/I18NBundle;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 421
    nop

    .end local v2  # "fileHandleCivs":Lcom/badlogic/gdx/files/FileHandle;
    .end local v3  # "localeCivs":Ljava/util/Locale;
    goto :goto_186

    .line 422
    :cond_12f
    sget-object v2, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->sUF:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v2

    if-eqz v2, :cond_186

    .line 423
    sget-object v2, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->sUF:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    .line 424
    .restart local v2  # "fileHandleCivs":Lcom/badlogic/gdx/files/FileHandle;
    new-instance v4, Ljava/util/Locale;

    invoke-direct {v4, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    move-object v3, v4

    .line 425
    .restart local v3  # "localeCivs":Ljava/util/Locale;
    iget-object v4, p0, Lage/of/civilizations2/jakowski/lukasz/LangManager;->modsBundles:Ljava/util/List;

    invoke-static {v2, v3}, Lcom/badlogic/gdx/utils/I18NBundle;->createBundle(Lcom/badlogic/gdx/files/FileHandle;Ljava/util/Locale;)Lcom/badlogic/gdx/utils/I18NBundle;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 406
    .end local v2  # "fileHandleCivs":Lcom/badlogic/gdx/files/FileHandle;
    .end local v3  # "localeCivs":Ljava/util/Locale;
    :cond_186
    :goto_186
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_8

    .line 429
    .end local v1  # "i":I
    :cond_18a
    const/4 v1, 0x0

    .restart local v1  # "i":I
    :goto_18b
    sget v2, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->sUIIS:I

    if-ge v1, v2, :cond_269

    .line 430
    sget-object v2, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->sUII:Ljava/util/List;

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/codedisaster/steamworks/SteamUGC$ItemInstallInfo;

    invoke-virtual {v8}, Lcom/codedisaster/steamworks/SteamUGC$ItemInstallInfo;->getFolder()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v7}, Lcom/badlogic/gdx/Files;->absolute(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v2

    if-eqz v2, :cond_1ff

    .line 431
    sget-object v2, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->sUII:Ljava/util/List;

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/codedisaster/steamworks/SteamUGC$ItemInstallInfo;

    invoke-virtual {v8}, Lcom/codedisaster/steamworks/SteamUGC$ItemInstallInfo;->getFolder()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v7}, Lcom/badlogic/gdx/Files;->absolute(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    .line 432
    .restart local v2  # "fileHandleCivs":Lcom/badlogic/gdx/files/FileHandle;
    new-instance v7, Ljava/util/Locale;

    invoke-direct {v7, p1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 433
    .local v7, "localeCivs":Ljava/util/Locale;
    iget-object v8, p0, Lage/of/civilizations2/jakowski/lukasz/LangManager;->modsBundles:Ljava/util/List;

    invoke-static {v2, v7}, Lcom/badlogic/gdx/utils/I18NBundle;->createBundle(Lcom/badlogic/gdx/files/FileHandle;Ljava/util/Locale;)Lcom/badlogic/gdx/utils/I18NBundle;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 434
    nop

    .end local v2  # "fileHandleCivs":Lcom/badlogic/gdx/files/FileHandle;
    .end local v7  # "localeCivs":Ljava/util/Locale;
    goto :goto_265

    .line 435
    :cond_1ff
    sget-object v2, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->sUII:Ljava/util/List;

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/codedisaster/steamworks/SteamUGC$ItemInstallInfo;

    invoke-virtual {v8}, Lcom/codedisaster/steamworks/SteamUGC$ItemInstallInfo;->getFolder()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v7}, Lcom/badlogic/gdx/Files;->absolute(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v2

    if-eqz v2, :cond_265

    .line 436
    sget-object v2, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->sUII:Ljava/util/List;

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/codedisaster/steamworks/SteamUGC$ItemInstallInfo;

    invoke-virtual {v8}, Lcom/codedisaster/steamworks/SteamUGC$ItemInstallInfo;->getFolder()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v7}, Lcom/badlogic/gdx/Files;->absolute(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    .line 437
    .restart local v2  # "fileHandleCivs":Lcom/badlogic/gdx/files/FileHandle;
    new-instance v7, Ljava/util/Locale;

    invoke-direct {v7, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 438
    .restart local v7  # "localeCivs":Ljava/util/Locale;
    iget-object v8, p0, Lage/of/civilizations2/jakowski/lukasz/LangManager;->modsBundles:Ljava/util/List;

    invoke-static {v2, v7}, Lcom/badlogic/gdx/utils/I18NBundle;->createBundle(Lcom/badlogic/gdx/files/FileHandle;Ljava/util/Locale;)Lcom/badlogic/gdx/utils/I18NBundle;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_265
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_265} :catch_26a

    .line 429
    .end local v2  # "fileHandleCivs":Lcom/badlogic/gdx/files/FileHandle;
    .end local v7  # "localeCivs":Ljava/util/Locale;
    :cond_265
    :goto_265
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_18b

    .line 443
    .end local v1  # "i":I
    :cond_269
    goto :goto_26e

    .line 441
    :catch_26a
    move-exception v0

    .line 442
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 445
    .end local v0  # "ex":Ljava/lang/Exception;
    :goto_26e
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/LangManager;->modsBundles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/LangManager;->modsBundlesSize:I

    .line 446
    return-void
.end method

.method public final updateKeyOutput()V
    .registers 2

    .line 228
    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/LangManager;->translationsKeysMode:Z

    if-eqz v0, :cond_c

    .line 229
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/LangManager$1;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/LangManager$1;-><init>(Lage/of/civilizations2/jakowski/lukasz/LangManager;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/LangManager;->keyOutput:Lage/of/civilizations2/jakowski/lukasz/LangManager$KeyOutput;

    goto :goto_13

    .line 252
    :cond_c
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/LangManager$2;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/LangManager$2;-><init>(Lage/of/civilizations2/jakowski/lukasz/LangManager;)V

    iput-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/LangManager;->keyOutput:Lage/of/civilizations2/jakowski/lukasz/LangManager$KeyOutput;

    .line 327
    :goto_13
    return-void
.end method
