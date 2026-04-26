.class public Lcom/badlogic/gdx/graphics/glutils/GLVersion;
.super Ljava/lang/Object;
.source "GLVersion.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/graphics/glutils/GLVersion$Type;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private majorVersion:I

.field private minorVersion:I

.field private releaseVersion:I

.field private final rendererString:Ljava/lang/String;

.field private final type:Lcom/badlogic/gdx/graphics/glutils/GLVersion$Type;

.field private final vendorString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/Application$ApplicationType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "appType"  # Lcom/badlogic/gdx/Application$ApplicationType;
    .param p2, "versionString"  # Ljava/lang/String;
    .param p3, "vendorString"  # Ljava/lang/String;
    .param p4, "rendererString"  # Ljava/lang/String;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const-string v0, "GLVersion"

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/GLVersion;->TAG:Ljava/lang/String;

    .line 39
    sget-object v0, Lcom/badlogic/gdx/Application$ApplicationType;->Android:Lcom/badlogic/gdx/Application$ApplicationType;

    if-ne p1, v0, :cond_10

    sget-object v0, Lcom/badlogic/gdx/graphics/glutils/GLVersion$Type;->GLES:Lcom/badlogic/gdx/graphics/glutils/GLVersion$Type;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/GLVersion;->type:Lcom/badlogic/gdx/graphics/glutils/GLVersion$Type;

    goto :goto_38

    .line 40
    :cond_10
    sget-object v0, Lcom/badlogic/gdx/Application$ApplicationType;->iOS:Lcom/badlogic/gdx/Application$ApplicationType;

    if-ne p1, v0, :cond_19

    sget-object v0, Lcom/badlogic/gdx/graphics/glutils/GLVersion$Type;->GLES:Lcom/badlogic/gdx/graphics/glutils/GLVersion$Type;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/GLVersion;->type:Lcom/badlogic/gdx/graphics/glutils/GLVersion$Type;

    goto :goto_38

    .line 41
    :cond_19
    sget-object v0, Lcom/badlogic/gdx/Application$ApplicationType;->Desktop:Lcom/badlogic/gdx/Application$ApplicationType;

    if-ne p1, v0, :cond_22

    sget-object v0, Lcom/badlogic/gdx/graphics/glutils/GLVersion$Type;->OpenGL:Lcom/badlogic/gdx/graphics/glutils/GLVersion$Type;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/GLVersion;->type:Lcom/badlogic/gdx/graphics/glutils/GLVersion$Type;

    goto :goto_38

    .line 42
    :cond_22
    sget-object v0, Lcom/badlogic/gdx/Application$ApplicationType;->Applet:Lcom/badlogic/gdx/Application$ApplicationType;

    if-ne p1, v0, :cond_2b

    sget-object v0, Lcom/badlogic/gdx/graphics/glutils/GLVersion$Type;->OpenGL:Lcom/badlogic/gdx/graphics/glutils/GLVersion$Type;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/GLVersion;->type:Lcom/badlogic/gdx/graphics/glutils/GLVersion$Type;

    goto :goto_38

    .line 43
    :cond_2b
    sget-object v0, Lcom/badlogic/gdx/Application$ApplicationType;->WebGL:Lcom/badlogic/gdx/Application$ApplicationType;

    if-ne p1, v0, :cond_34

    sget-object v0, Lcom/badlogic/gdx/graphics/glutils/GLVersion$Type;->WebGL:Lcom/badlogic/gdx/graphics/glutils/GLVersion$Type;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/GLVersion;->type:Lcom/badlogic/gdx/graphics/glutils/GLVersion$Type;

    goto :goto_38

    .line 44
    :cond_34
    sget-object v0, Lcom/badlogic/gdx/graphics/glutils/GLVersion$Type;->NONE:Lcom/badlogic/gdx/graphics/glutils/GLVersion$Type;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/GLVersion;->type:Lcom/badlogic/gdx/graphics/glutils/GLVersion$Type;

    .line 46
    :goto_38
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/GLVersion;->type:Lcom/badlogic/gdx/graphics/glutils/GLVersion$Type;

    sget-object v1, Lcom/badlogic/gdx/graphics/glutils/GLVersion$Type;->GLES:Lcom/badlogic/gdx/graphics/glutils/GLVersion$Type;

    if-ne v0, v1, :cond_44

    .line 48
    const-string v0, "OpenGL ES (\\d(\\.\\d){0,2})"

    invoke-direct {p0, v0, p2}, Lcom/badlogic/gdx/graphics/glutils/GLVersion;->extractVersion(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_67

    .line 49
    :cond_44
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/GLVersion;->type:Lcom/badlogic/gdx/graphics/glutils/GLVersion$Type;

    sget-object v1, Lcom/badlogic/gdx/graphics/glutils/GLVersion$Type;->WebGL:Lcom/badlogic/gdx/graphics/glutils/GLVersion$Type;

    if-ne v0, v1, :cond_50

    .line 51
    const-string v0, "WebGL (\\d(\\.\\d){0,2})"

    invoke-direct {p0, v0, p2}, Lcom/badlogic/gdx/graphics/glutils/GLVersion;->extractVersion(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_67

    .line 52
    :cond_50
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/GLVersion;->type:Lcom/badlogic/gdx/graphics/glutils/GLVersion$Type;

    sget-object v1, Lcom/badlogic/gdx/graphics/glutils/GLVersion$Type;->OpenGL:Lcom/badlogic/gdx/graphics/glutils/GLVersion$Type;

    if-ne v0, v1, :cond_5c

    .line 54
    const-string v0, "(\\d(\\.\\d){0,2})"

    invoke-direct {p0, v0, p2}, Lcom/badlogic/gdx/graphics/glutils/GLVersion;->extractVersion(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_67

    .line 56
    :cond_5c
    const/4 v0, -0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/glutils/GLVersion;->majorVersion:I

    .line 57
    iput v0, p0, Lcom/badlogic/gdx/graphics/glutils/GLVersion;->minorVersion:I

    .line 58
    iput v0, p0, Lcom/badlogic/gdx/graphics/glutils/GLVersion;->releaseVersion:I

    .line 59
    const-string p3, ""

    .line 60
    const-string p4, ""

    .line 63
    :goto_67
    iput-object p3, p0, Lcom/badlogic/gdx/graphics/glutils/GLVersion;->vendorString:Ljava/lang/String;

    .line 64
    iput-object p4, p0, Lcom/badlogic/gdx/graphics/glutils/GLVersion;->rendererString:Ljava/lang/String;

    .line 65
    return-void
.end method

.method private extractVersion(Ljava/lang/String;Ljava/lang/String;)V
    .registers 12
    .param p1, "patternString"  # Ljava/lang/String;
    .param p2, "versionString"  # Ljava/lang/String;

    .line 68
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 69
    .local v0, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v0, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 70
    .local v1, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    .line 71
    .local v2, "found":Z
    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eqz v2, :cond_3e

    .line 72
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    .line 73
    .local v6, "result":Ljava/lang/String;
    const-string v7, "\\."

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 74
    .local v7, "resultSplit":[Ljava/lang/String;
    aget-object v8, v7, v4

    invoke-direct {p0, v8, v3}, Lcom/badlogic/gdx/graphics/glutils/GLVersion;->parseInt(Ljava/lang/String;I)I

    move-result v8

    iput v8, p0, Lcom/badlogic/gdx/graphics/glutils/GLVersion;->majorVersion:I

    .line 75
    array-length v8, v7

    if-ge v8, v3, :cond_28

    move v5, v4

    goto :goto_2e

    :cond_28
    aget-object v5, v7, v5

    invoke-direct {p0, v5, v4}, Lcom/badlogic/gdx/graphics/glutils/GLVersion;->parseInt(Ljava/lang/String;I)I

    move-result v5

    :goto_2e
    iput v5, p0, Lcom/badlogic/gdx/graphics/glutils/GLVersion;->minorVersion:I

    .line 76
    array-length v5, v7

    const/4 v8, 0x3

    if-ge v5, v8, :cond_35

    goto :goto_3b

    :cond_35
    aget-object v3, v7, v3

    invoke-direct {p0, v3, v4}, Lcom/badlogic/gdx/graphics/glutils/GLVersion;->parseInt(Ljava/lang/String;I)I

    move-result v4

    :goto_3b
    iput v4, p0, Lcom/badlogic/gdx/graphics/glutils/GLVersion;->releaseVersion:I

    .line 77
    .end local v6  # "result":Ljava/lang/String;
    .end local v7  # "resultSplit":[Ljava/lang/String;
    goto :goto_5e

    .line 78
    :cond_3e
    sget-object v5, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid version string: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "GLVersion"

    invoke-interface {v5, v7, v6}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    iput v3, p0, Lcom/badlogic/gdx/graphics/glutils/GLVersion;->majorVersion:I

    .line 80
    iput v4, p0, Lcom/badlogic/gdx/graphics/glutils/GLVersion;->minorVersion:I

    .line 81
    iput v4, p0, Lcom/badlogic/gdx/graphics/glutils/GLVersion;->releaseVersion:I

    .line 83
    :goto_5e
    return-void
.end method

.method private parseInt(Ljava/lang/String;I)I
    .registers 7
    .param p1, "v"  # Ljava/lang/String;
    .param p2, "defaultValue"  # I

    .line 88
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_4} :catch_5

    return v0

    .line 89
    :catch_5
    move-exception v0

    .line 90
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    sget-object v1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error parsing number: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", assuming: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "LibGDX GL"

    invoke-interface {v1, v3, v2}, Lcom/badlogic/gdx/Application;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    return p2
.end method


# virtual methods
.method public getDebugVersionString()Ljava/lang/String;
    .registers 4

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/GLVersion;->type:Lcom/badlogic/gdx/graphics/glutils/GLVersion$Type;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nVersion: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/badlogic/gdx/graphics/glutils/GLVersion;->majorVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/badlogic/gdx/graphics/glutils/GLVersion;->minorVersion:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/badlogic/gdx/graphics/glutils/GLVersion;->releaseVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nVendor: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/GLVersion;->vendorString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nRenderer: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/GLVersion;->rendererString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMajorVersion()I
    .registers 2

    .line 102
    iget v0, p0, Lcom/badlogic/gdx/graphics/glutils/GLVersion;->majorVersion:I

    return v0
.end method

.method public getMinorVersion()I
    .registers 2

    .line 107
    iget v0, p0, Lcom/badlogic/gdx/graphics/glutils/GLVersion;->minorVersion:I

    return v0
.end method

.method public getReleaseVersion()I
    .registers 2

    .line 112
    iget v0, p0, Lcom/badlogic/gdx/graphics/glutils/GLVersion;->releaseVersion:I

    return v0
.end method

.method public getRendererString()Ljava/lang/String;
    .registers 2

    .line 123
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/GLVersion;->rendererString:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lcom/badlogic/gdx/graphics/glutils/GLVersion$Type;
    .registers 2

    .line 97
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/GLVersion;->type:Lcom/badlogic/gdx/graphics/glutils/GLVersion$Type;

    return-object v0
.end method

.method public getVendorString()Ljava/lang/String;
    .registers 2

    .line 117
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/GLVersion;->vendorString:Ljava/lang/String;

    return-object v0
.end method

.method public isVersionEqualToOrHigher(II)Z
    .registers 4
    .param p1, "testMajorVersion"  # I
    .param p2, "testMinorVersion"  # I

    .line 134
    iget v0, p0, Lcom/badlogic/gdx/graphics/glutils/GLVersion;->majorVersion:I

    if-gt v0, p1, :cond_f

    iget v0, p0, Lcom/badlogic/gdx/graphics/glutils/GLVersion;->majorVersion:I

    if-ne v0, p1, :cond_d

    iget v0, p0, Lcom/badlogic/gdx/graphics/glutils/GLVersion;->minorVersion:I

    if-lt v0, p2, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method
