.class public final Lcom/badlogic/gdx/scenes/scene2d/utils/UIUtils;
.super Ljava/lang/Object;
.source "UIUtils.java"


# static fields
.field public static isAndroid:Z

.field public static isIos:Z

.field public static isLinux:Z

.field public static isMac:Z

.field public static isWindows:Z


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 14
    const-string v0, "java.runtime.name"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Android"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/badlogic/gdx/scenes/scene2d/utils/UIUtils;->isAndroid:Z

    .line 15
    sget-boolean v0, Lcom/badlogic/gdx/scenes/scene2d/utils/UIUtils;->isAndroid:Z

    const-string v1, "os.name"

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_24

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "Mac"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_24

    move v0, v2

    goto :goto_25

    :cond_24
    move v0, v3

    :goto_25
    sput-boolean v0, Lcom/badlogic/gdx/scenes/scene2d/utils/UIUtils;->isMac:Z

    .line 16
    sget-boolean v0, Lcom/badlogic/gdx/scenes/scene2d/utils/UIUtils;->isAndroid:Z

    if-nez v0, :cond_39

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "Windows"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_39

    move v0, v2

    goto :goto_3a

    :cond_39
    move v0, v3

    :goto_3a
    sput-boolean v0, Lcom/badlogic/gdx/scenes/scene2d/utils/UIUtils;->isWindows:Z

    .line 17
    sget-boolean v0, Lcom/badlogic/gdx/scenes/scene2d/utils/UIUtils;->isAndroid:Z

    if-nez v0, :cond_4e

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Linux"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4e

    move v0, v2

    goto :goto_4f

    :cond_4e
    move v0, v3

    :goto_4f
    sput-boolean v0, Lcom/badlogic/gdx/scenes/scene2d/utils/UIUtils;->isLinux:Z

    .line 18
    sget-boolean v0, Lcom/badlogic/gdx/scenes/scene2d/utils/UIUtils;->isAndroid:Z

    if-nez v0, :cond_62

    sget-boolean v0, Lcom/badlogic/gdx/scenes/scene2d/utils/UIUtils;->isWindows:Z

    if-nez v0, :cond_62

    sget-boolean v0, Lcom/badlogic/gdx/scenes/scene2d/utils/UIUtils;->isLinux:Z

    if-nez v0, :cond_62

    sget-boolean v0, Lcom/badlogic/gdx/scenes/scene2d/utils/UIUtils;->isMac:Z

    if-nez v0, :cond_62

    goto :goto_63

    :cond_62
    move v2, v3

    :goto_63
    sput-boolean v2, Lcom/badlogic/gdx/scenes/scene2d/utils/UIUtils;->isIos:Z

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    return-void
.end method

.method public static alt()Z
    .registers 2

    .line 67
    sget-object v0, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    const/16 v1, 0x39

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Input;->isKeyPressed(I)Z

    move-result v0

    if-nez v0, :cond_17

    sget-object v0, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    const/16 v1, 0x3a

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Input;->isKeyPressed(I)Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_17

    :cond_15
    const/4 v0, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 v0, 0x1

    :goto_18
    return v0
.end method

.method public static alt(I)Z
    .registers 2
    .param p0, "keycode"  # I

    .line 71
    const/16 v0, 0x39

    if-eq p0, v0, :cond_b

    const/16 v0, 0x3a

    if-ne p0, v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method

.method public static ctrl()Z
    .registers 2

    .line 53
    sget-boolean v0, Lcom/badlogic/gdx/scenes/scene2d/utils/UIUtils;->isMac:Z

    if-eqz v0, :cond_d

    .line 54
    sget-object v0, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    const/16 v1, 0x3f

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Input;->isKeyPressed(I)Z

    move-result v0

    return v0

    .line 56
    :cond_d
    sget-object v0, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    const/16 v1, 0x81

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Input;->isKeyPressed(I)Z

    move-result v0

    if-nez v0, :cond_24

    sget-object v0, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    const/16 v1, 0x82

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Input;->isKeyPressed(I)Z

    move-result v0

    if-eqz v0, :cond_22

    goto :goto_24

    :cond_22
    const/4 v0, 0x0

    goto :goto_25

    :cond_24
    :goto_24
    const/4 v0, 0x1

    :goto_25
    return v0
.end method

.method public static ctrl(I)Z
    .registers 4
    .param p0, "keycode"  # I

    .line 60
    sget-boolean v0, Lcom/badlogic/gdx/scenes/scene2d/utils/UIUtils;->isMac:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_c

    .line 61
    const/16 v0, 0x3f

    if-ne p0, v0, :cond_b

    move v1, v2

    :cond_b
    return v1

    .line 63
    :cond_c
    const/16 v0, 0x81

    if-eq p0, v0, :cond_14

    const/16 v0, 0x82

    if-ne p0, v0, :cond_15

    :cond_14
    move v1, v2

    :cond_15
    return v1
.end method

.method public static left()Z
    .registers 2

    .line 21
    sget-object v0, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Input;->isButtonPressed(I)Z

    move-result v0

    return v0
.end method

.method public static left(I)Z
    .registers 2
    .param p0, "button"  # I

    .line 25
    if-nez p0, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    return v0
.end method

.method public static middle()Z
    .registers 2

    .line 37
    sget-object v0, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Input;->isButtonPressed(I)Z

    move-result v0

    return v0
.end method

.method public static middle(I)Z
    .registers 2
    .param p0, "button"  # I

    .line 41
    const/4 v0, 0x2

    if-ne p0, v0, :cond_5

    const/4 v0, 0x1

    goto :goto_6

    :cond_5
    const/4 v0, 0x0

    :goto_6
    return v0
.end method

.method public static right()Z
    .registers 2

    .line 29
    sget-object v0, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Input;->isButtonPressed(I)Z

    move-result v0

    return v0
.end method

.method public static right(I)Z
    .registers 2
    .param p0, "button"  # I

    .line 33
    const/4 v0, 0x1

    if-ne p0, v0, :cond_4

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    return v0
.end method

.method public static shift()Z
    .registers 2

    .line 45
    sget-object v0, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    const/16 v1, 0x3b

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Input;->isKeyPressed(I)Z

    move-result v0

    if-nez v0, :cond_17

    sget-object v0, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    const/16 v1, 0x3c

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Input;->isKeyPressed(I)Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_17

    :cond_15
    const/4 v0, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 v0, 0x1

    :goto_18
    return v0
.end method

.method public static shift(I)Z
    .registers 2
    .param p0, "keycode"  # I

    .line 49
    const/16 v0, 0x3b

    if-eq p0, v0, :cond_b

    const/16 v0, 0x3c

    if-ne p0, v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method
