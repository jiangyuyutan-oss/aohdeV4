.class public Lcom/badlogic/gdx/utils/I18NBundle;
.super Ljava/lang/Object;
.source "I18NBundle.java"


# static fields
.field private static final DEFAULT_ENCODING:Ljava/lang/String; = "UTF-8"

.field private static final ROOT_LOCALE:Ljava/util/Locale;

.field private static exceptionOnMissingKey:Z

.field private static simpleFormatter:Z


# instance fields
.field private formatter:Lcom/badlogic/gdx/utils/TextFormatter;

.field private locale:Ljava/util/Locale;

.field private parent:Lcom/badlogic/gdx/utils/I18NBundle;

.field private properties:Lcom/badlogic/gdx/utils/ObjectMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/ObjectMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 69
    new-instance v0, Ljava/util/Locale;

    const-string v1, ""

    invoke-direct {v0, v1, v1, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/badlogic/gdx/utils/I18NBundle;->ROOT_LOCALE:Ljava/util/Locale;

    .line 71
    const/4 v0, 0x0

    sput-boolean v0, Lcom/badlogic/gdx/utils/I18NBundle;->simpleFormatter:Z

    .line 72
    const/4 v0, 0x1

    sput-boolean v0, Lcom/badlogic/gdx/utils/I18NBundle;->exceptionOnMissingKey:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkFileExistence(Lcom/badlogic/gdx/files/FileHandle;)Z
    .registers 3
    .param p0, "fh"  # Lcom/badlogic/gdx/files/FileHandle;

    .line 345
    :try_start_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/files/FileHandle;->read()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_9

    .line 346
    const/4 v0, 0x1

    return v0

    .line 347
    :catch_9
    move-exception v0

    .line 348
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    return v1
.end method

.method public static createBundle(Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/utils/I18NBundle;
    .registers 3
    .param p0, "baseFileHandle"  # Lcom/badlogic/gdx/files/FileHandle;

    .line 119
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-static {p0, v0, v1}, Lcom/badlogic/gdx/utils/I18NBundle;->createBundleImpl(Lcom/badlogic/gdx/files/FileHandle;Ljava/util/Locale;Ljava/lang/String;)Lcom/badlogic/gdx/utils/I18NBundle;

    move-result-object v0

    return-object v0
.end method

.method public static createBundle(Lcom/badlogic/gdx/files/FileHandle;Ljava/lang/String;)Lcom/badlogic/gdx/utils/I18NBundle;
    .registers 3
    .param p0, "baseFileHandle"  # Lcom/badlogic/gdx/files/FileHandle;
    .param p1, "encoding"  # Ljava/lang/String;

    .line 142
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/badlogic/gdx/utils/I18NBundle;->createBundleImpl(Lcom/badlogic/gdx/files/FileHandle;Ljava/util/Locale;Ljava/lang/String;)Lcom/badlogic/gdx/utils/I18NBundle;

    move-result-object v0

    return-object v0
.end method

.method public static createBundle(Lcom/badlogic/gdx/files/FileHandle;Ljava/util/Locale;)Lcom/badlogic/gdx/utils/I18NBundle;
    .registers 3
    .param p0, "baseFileHandle"  # Lcom/badlogic/gdx/files/FileHandle;
    .param p1, "locale"  # Ljava/util/Locale;

    .line 131
    const-string v0, "UTF-8"

    invoke-static {p0, p1, v0}, Lcom/badlogic/gdx/utils/I18NBundle;->createBundleImpl(Lcom/badlogic/gdx/files/FileHandle;Ljava/util/Locale;Ljava/lang/String;)Lcom/badlogic/gdx/utils/I18NBundle;

    move-result-object v0

    return-object v0
.end method

.method public static createBundle(Lcom/badlogic/gdx/files/FileHandle;Ljava/util/Locale;Ljava/lang/String;)Lcom/badlogic/gdx/utils/I18NBundle;
    .registers 4
    .param p0, "baseFileHandle"  # Lcom/badlogic/gdx/files/FileHandle;
    .param p1, "locale"  # Ljava/util/Locale;
    .param p2, "encoding"  # Ljava/lang/String;

    .line 155
    invoke-static {p0, p1, p2}, Lcom/badlogic/gdx/utils/I18NBundle;->createBundleImpl(Lcom/badlogic/gdx/files/FileHandle;Ljava/util/Locale;Ljava/lang/String;)Lcom/badlogic/gdx/utils/I18NBundle;

    move-result-object v0

    return-object v0
.end method

.method private static createBundleImpl(Lcom/badlogic/gdx/files/FileHandle;Ljava/util/Locale;Ljava/lang/String;)Lcom/badlogic/gdx/utils/I18NBundle;
    .registers 12
    .param p0, "baseFileHandle"  # Lcom/badlogic/gdx/files/FileHandle;
    .param p1, "locale"  # Ljava/util/Locale;
    .param p2, "encoding"  # Ljava/lang/String;

    .line 159
    if-eqz p0, :cond_8b

    if-eqz p1, :cond_8b

    if-eqz p2, :cond_8b

    .line 161
    const/4 v0, 0x0

    .line 162
    .local v0, "bundle":Lcom/badlogic/gdx/utils/I18NBundle;
    const/4 v1, 0x0

    .line 163
    .local v1, "baseBundle":Lcom/badlogic/gdx/utils/I18NBundle;
    move-object v2, p1

    .line 166
    .local v2, "targetLocale":Ljava/util/Locale;
    :cond_9
    invoke-static {v2}, Lcom/badlogic/gdx/utils/I18NBundle;->getCandidateLocales(Ljava/util/Locale;)Ljava/util/List;

    move-result-object v3

    .line 169
    .local v3, "candidateLocales":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale;>;"
    const/4 v4, 0x0

    invoke-static {p0, p2, v3, v4, v1}, Lcom/badlogic/gdx/utils/I18NBundle;->loadBundleChain(Lcom/badlogic/gdx/files/FileHandle;Ljava/lang/String;Ljava/util/List;ILcom/badlogic/gdx/utils/I18NBundle;)Lcom/badlogic/gdx/utils/I18NBundle;

    move-result-object v0

    .line 172
    if-eqz v0, :cond_3e

    .line 173
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/I18NBundle;->getLocale()Ljava/util/Locale;

    move-result-object v5

    .line 174
    .local v5, "bundleLocale":Ljava/util/Locale;
    sget-object v6, Lcom/badlogic/gdx/utils/I18NBundle;->ROOT_LOCALE:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 176
    .local v6, "isBaseBundle":Z
    if-eqz v6, :cond_44

    invoke-virtual {v5, p1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_27

    .line 178
    goto :goto_44

    .line 180
    :cond_27
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_39

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_39

    .line 182
    goto :goto_44

    .line 184
    :cond_39
    if-eqz v6, :cond_3e

    if-nez v1, :cond_3e

    .line 186
    move-object v1, v0

    .line 191
    .end local v5  # "bundleLocale":Ljava/util/Locale;
    .end local v6  # "isBaseBundle":Z
    :cond_3e
    invoke-static {v2}, Lcom/badlogic/gdx/utils/I18NBundle;->getFallbackLocale(Ljava/util/Locale;)Ljava/util/Locale;

    move-result-object v2

    .line 193
    .end local v3  # "candidateLocales":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale;>;"
    if-nez v2, :cond_9

    .line 195
    :cond_44
    :goto_44
    if-nez v0, :cond_8a

    .line 196
    if-eqz v1, :cond_4a

    .line 202
    move-object v0, v1

    goto :goto_8a

    .line 198
    :cond_4a
    new-instance v3, Ljava/util/MissingResourceException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t find bundle for base file handle "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/badlogic/gdx/files/FileHandle;->path()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", locale "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-direct {v3, v4, v5, v6}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v3

    .line 205
    :cond_8a
    :goto_8a
    return-object v0

    .line 159
    .end local v0  # "bundle":Lcom/badlogic/gdx/utils/I18NBundle;
    .end local v1  # "baseBundle":Lcom/badlogic/gdx/utils/I18NBundle;
    .end local v2  # "targetLocale":Ljava/util/Locale;
    :cond_8b
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private static getCandidateLocales(Ljava/util/Locale;)Ljava/util/List;
    .registers 6
    .param p0, "locale"  # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Locale;",
            ")",
            "Ljava/util/List<",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation

    .line 257
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 258
    .local v0, "language":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    .line 259
    .local v1, "country":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v2

    .line 261
    .local v2, "variant":Ljava/lang/String;
    new-instance v3, Ljava/util/ArrayList;

    const/4 v4, 0x4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 262
    .local v3, "locales":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale;>;"
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1b

    .line 263
    invoke-interface {v3, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 265
    :cond_1b
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_31

    .line 266
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_29

    move-object v4, p0

    goto :goto_2e

    :cond_29
    new-instance v4, Ljava/util/Locale;

    invoke-direct {v4, v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2e
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 268
    :cond_31
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_47

    .line 269
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3f

    move-object v4, p0

    goto :goto_44

    :cond_3f
    new-instance v4, Ljava/util/Locale;

    invoke-direct {v4, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    :goto_44
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 271
    :cond_47
    sget-object v4, Lcom/badlogic/gdx/utils/I18NBundle;->ROOT_LOCALE:Ljava/util/Locale;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 272
    return-object v3
.end method

.method public static getExceptionOnMissingKey()Z
    .registers 1

    .line 102
    sget-boolean v0, Lcom/badlogic/gdx/utils/I18NBundle;->exceptionOnMissingKey:Z

    return v0
.end method

.method private static getFallbackLocale(Ljava/util/Locale;)Ljava/util/Locale;
    .registers 3
    .param p0, "locale"  # Ljava/util/Locale;

    .line 289
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 290
    .local v0, "defaultLocale":Ljava/util/Locale;
    invoke-virtual {p0, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    const/4 v1, 0x0

    goto :goto_d

    :cond_c
    move-object v1, v0

    :goto_d
    return-object v1
.end method

.method public static getSimpleFormatter()Z
    .registers 1

    .line 89
    sget-boolean v0, Lcom/badlogic/gdx/utils/I18NBundle;->simpleFormatter:Z

    return v0
.end method

.method private static loadBundle(Lcom/badlogic/gdx/files/FileHandle;Ljava/lang/String;Ljava/util/Locale;)Lcom/badlogic/gdx/utils/I18NBundle;
    .registers 7
    .param p0, "baseFileHandle"  # Lcom/badlogic/gdx/files/FileHandle;
    .param p1, "encoding"  # Ljava/lang/String;
    .param p2, "targetLocale"  # Ljava/util/Locale;

    .line 316
    const/4 v0, 0x0

    .line 317
    .local v0, "bundle":Lcom/badlogic/gdx/utils/I18NBundle;
    const/4 v1, 0x0

    .line 319
    .local v1, "reader":Ljava/io/Reader;
    :try_start_2
    invoke-static {p0, p2}, Lcom/badlogic/gdx/utils/I18NBundle;->toFileHandle(Lcom/badlogic/gdx/files/FileHandle;Ljava/util/Locale;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    .line 320
    .local v2, "fileHandle":Lcom/badlogic/gdx/files/FileHandle;
    invoke-static {v2}, Lcom/badlogic/gdx/utils/I18NBundle;->checkFileExistence(Lcom/badlogic/gdx/files/FileHandle;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 322
    new-instance v3, Lcom/badlogic/gdx/utils/I18NBundle;

    invoke-direct {v3}, Lcom/badlogic/gdx/utils/I18NBundle;-><init>()V

    move-object v0, v3

    .line 325
    invoke-virtual {v2, p1}, Lcom/badlogic/gdx/files/FileHandle;->reader(Ljava/lang/String;)Ljava/io/Reader;

    move-result-object v3

    move-object v1, v3

    .line 326
    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/I18NBundle;->load(Ljava/io/Reader;)V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_1a} :catch_26
    .catchall {:try_start_2 .. :try_end_1a} :catchall_24

    .line 332
    .end local v2  # "fileHandle":Lcom/badlogic/gdx/files/FileHandle;
    :cond_1a
    invoke-static {v1}, Lcom/badlogic/gdx/utils/StreamUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 333
    nop

    .line 334
    if-eqz v0, :cond_23

    .line 335
    invoke-direct {v0, p2}, Lcom/badlogic/gdx/utils/I18NBundle;->setLocale(Ljava/util/Locale;)V

    .line 338
    :cond_23
    return-object v0

    .line 332
    :catchall_24
    move-exception v2

    goto :goto_2d

    .line 328
    :catch_26
    move-exception v2

    .line 329
    .local v2, "e":Ljava/io/IOException;
    :try_start_27
    new-instance v3, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    invoke-direct {v3, v2}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/Throwable;)V

    .end local v0  # "bundle":Lcom/badlogic/gdx/utils/I18NBundle;
    .end local v1  # "reader":Ljava/io/Reader;
    .end local p0  # "baseFileHandle":Lcom/badlogic/gdx/files/FileHandle;
    .end local p1  # "encoding":Ljava/lang/String;
    .end local p2  # "targetLocale":Ljava/util/Locale;
    throw v3
    :try_end_2d
    .catchall {:try_start_27 .. :try_end_2d} :catchall_24

    .line 332
    .end local v2  # "e":Ljava/io/IOException;
    .restart local v0  # "bundle":Lcom/badlogic/gdx/utils/I18NBundle;
    .restart local v1  # "reader":Ljava/io/Reader;
    .restart local p0  # "baseFileHandle":Lcom/badlogic/gdx/files/FileHandle;
    .restart local p1  # "encoding":Ljava/lang/String;
    .restart local p2  # "targetLocale":Ljava/util/Locale;
    :goto_2d
    invoke-static {v1}, Lcom/badlogic/gdx/utils/StreamUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v2
.end method

.method private static loadBundleChain(Lcom/badlogic/gdx/files/FileHandle;Ljava/lang/String;Ljava/util/List;ILcom/badlogic/gdx/utils/I18NBundle;)Lcom/badlogic/gdx/utils/I18NBundle;
    .registers 8
    .param p0, "baseFileHandle"  # Lcom/badlogic/gdx/files/FileHandle;
    .param p1, "encoding"  # Ljava/lang/String;
    .param p3, "candidateIndex"  # I
    .param p4, "baseBundle"  # Lcom/badlogic/gdx/utils/I18NBundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/files/FileHandle;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/util/Locale;",
            ">;I",
            "Lcom/badlogic/gdx/utils/I18NBundle;",
            ")",
            "Lcom/badlogic/gdx/utils/I18NBundle;"
        }
    .end annotation

    .line 295
    .local p2, "candidateLocales":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale;>;"
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;

    .line 296
    .local v0, "targetLocale":Ljava/util/Locale;
    const/4 v1, 0x0

    .line 297
    .local v1, "parent":Lcom/badlogic/gdx/utils/I18NBundle;
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-eq p3, v2, :cond_16

    .line 299
    add-int/lit8 v2, p3, 0x1

    invoke-static {p0, p1, p2, v2, p4}, Lcom/badlogic/gdx/utils/I18NBundle;->loadBundleChain(Lcom/badlogic/gdx/files/FileHandle;Ljava/lang/String;Ljava/util/List;ILcom/badlogic/gdx/utils/I18NBundle;)Lcom/badlogic/gdx/utils/I18NBundle;

    move-result-object v1

    goto :goto_21

    .line 300
    :cond_16
    if-eqz p4, :cond_21

    sget-object v2, Lcom/badlogic/gdx/utils/I18NBundle;->ROOT_LOCALE:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 301
    return-object p4

    .line 305
    :cond_21
    :goto_21
    invoke-static {p0, p1, v0}, Lcom/badlogic/gdx/utils/I18NBundle;->loadBundle(Lcom/badlogic/gdx/files/FileHandle;Ljava/lang/String;Ljava/util/Locale;)Lcom/badlogic/gdx/utils/I18NBundle;

    move-result-object v2

    .line 306
    .local v2, "bundle":Lcom/badlogic/gdx/utils/I18NBundle;
    if-eqz v2, :cond_2a

    .line 307
    iput-object v1, v2, Lcom/badlogic/gdx/utils/I18NBundle;->parent:Lcom/badlogic/gdx/utils/I18NBundle;

    .line 308
    return-object v2

    .line 311
    :cond_2a
    return-object v1
.end method

.method public static setExceptionOnMissingKey(Z)V
    .registers 1
    .param p0, "enabled"  # Z

    .line 109
    sput-boolean p0, Lcom/badlogic/gdx/utils/I18NBundle;->exceptionOnMissingKey:Z

    .line 110
    return-void
.end method

.method private setLocale(Ljava/util/Locale;)V
    .registers 4
    .param p1, "locale"  # Ljava/util/Locale;

    .line 416
    iput-object p1, p0, Lcom/badlogic/gdx/utils/I18NBundle;->locale:Ljava/util/Locale;

    .line 417
    new-instance v0, Lcom/badlogic/gdx/utils/TextFormatter;

    sget-boolean v1, Lcom/badlogic/gdx/utils/I18NBundle;->simpleFormatter:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-direct {v0, p1, v1}, Lcom/badlogic/gdx/utils/TextFormatter;-><init>(Ljava/util/Locale;Z)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/I18NBundle;->formatter:Lcom/badlogic/gdx/utils/TextFormatter;

    .line 418
    return-void
.end method

.method public static setSimpleFormatter(Z)V
    .registers 1
    .param p0, "enabled"  # Z

    .line 95
    sput-boolean p0, Lcom/badlogic/gdx/utils/I18NBundle;->simpleFormatter:Z

    .line 96
    return-void
.end method

.method private static toFileHandle(Lcom/badlogic/gdx/files/FileHandle;Ljava/util/Locale;)Lcom/badlogic/gdx/files/FileHandle;
    .registers 11
    .param p0, "baseFileHandle"  # Lcom/badlogic/gdx/files/FileHandle;
    .param p1, "locale"  # Ljava/util/Locale;

    .line 381
    new-instance v0, Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-virtual {p0}, Lcom/badlogic/gdx/files/FileHandle;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 382
    .local v0, "sb":Lcom/badlogic/gdx/utils/StringBuilder;
    sget-object v1, Lcom/badlogic/gdx/utils/I18NBundle;->ROOT_LOCALE:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5d

    .line 383
    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 384
    .local v1, "language":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    .line 385
    .local v2, "country":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v3

    .line 386
    .local v3, "variant":Ljava/lang/String;
    const-string v4, ""

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 387
    .local v5, "emptyLanguage":Z
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 388
    .local v6, "emptyCountry":Z
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 390
    .local v4, "emptyVariant":Z
    if-eqz v5, :cond_31

    if-eqz v6, :cond_31

    if-nez v4, :cond_5d

    .line 391
    :cond_31
    const/16 v7, 0x5f

    invoke-virtual {v0, v7}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 392
    if-nez v4, :cond_4c

    .line 393
    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    goto :goto_5d

    .line 394
    :cond_4c
    if-nez v6, :cond_5a

    .line 395
    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    goto :goto_5d

    .line 397
    :cond_5a
    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 401
    .end local v1  # "language":Ljava/lang/String;
    .end local v2  # "country":Ljava/lang/String;
    .end local v3  # "variant":Ljava/lang/String;
    .end local v4  # "emptyVariant":Z
    .end local v5  # "emptyLanguage":Z
    .end local v6  # "emptyCountry":Z
    :cond_5d
    :goto_5d
    const-string v1, ".properties"

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/files/FileHandle;->sibling(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public debug(Ljava/lang/String;)V
    .registers 6
    .param p1, "placeholder"  # Ljava/lang/String;

    .line 459
    iget-object v0, p0, Lcom/badlogic/gdx/utils/I18NBundle;->properties:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ObjectMap;->keys()Lcom/badlogic/gdx/utils/ObjectMap$Keys;

    move-result-object v0

    .line 460
    .local v0, "keys":Lcom/badlogic/gdx/utils/ObjectMap$Keys;, "Lcom/badlogic/gdx/utils/ObjectMap$Keys<Ljava/lang/String;>;"
    if-nez v0, :cond_9

    return-void

    .line 462
    :cond_9
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ObjectMap$Keys;->iterator()Lcom/badlogic/gdx/utils/ObjectMap$Keys;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 463
    .local v2, "s":Ljava/lang/String;
    iget-object v3, p0, Lcom/badlogic/gdx/utils/I18NBundle;->properties:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v3, v2, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 464
    .end local v2  # "s":Ljava/lang/String;
    goto :goto_d

    .line 465
    :cond_1f
    return-void
.end method

.method public varargs format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 5
    .param p1, "key"  # Ljava/lang/String;
    .param p2, "args"  # [Ljava/lang/Object;

    .line 451
    iget-object v0, p0, Lcom/badlogic/gdx/utils/I18NBundle;->formatter:Lcom/badlogic/gdx/utils/TextFormatter;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/badlogic/gdx/utils/TextFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "key"  # Ljava/lang/String;

    .line 429
    iget-object v0, p0, Lcom/badlogic/gdx/utils/I18NBundle;->properties:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 430
    .local v0, "result":Ljava/lang/String;
    if-nez v0, :cond_53

    .line 431
    iget-object v1, p0, Lcom/badlogic/gdx/utils/I18NBundle;->parent:Lcom/badlogic/gdx/utils/I18NBundle;

    if-eqz v1, :cond_14

    iget-object v1, p0, Lcom/badlogic/gdx/utils/I18NBundle;->parent:Lcom/badlogic/gdx/utils/I18NBundle;

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 432
    :cond_14
    if-nez v0, :cond_53

    .line 433
    sget-boolean v1, Lcom/badlogic/gdx/utils/I18NBundle;->exceptionOnMissingKey:Z

    if-nez v1, :cond_32

    .line 436
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "???"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 434
    :cond_32
    new-instance v1, Ljava/util/MissingResourceException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t find bundle key "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, p1}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    .line 439
    :cond_53
    return-object v0
.end method

.method public getLocale()Ljava/util/Locale;
    .registers 2

    .line 409
    iget-object v0, p0, Lcom/badlogic/gdx/utils/I18NBundle;->locale:Ljava/util/Locale;

    return-object v0
.end method

.method protected load(Ljava/io/Reader;)V
    .registers 3
    .param p1, "reader"  # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 359
    new-instance v0, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/I18NBundle;->properties:Lcom/badlogic/gdx/utils/ObjectMap;

    .line 360
    iget-object v0, p0, Lcom/badlogic/gdx/utils/I18NBundle;->properties:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-static {v0, p1}, Lcom/badlogic/gdx/utils/PropertiesUtils;->load(Lcom/badlogic/gdx/utils/ObjectMap;Ljava/io/Reader;)V

    .line 361
    return-void
.end method
