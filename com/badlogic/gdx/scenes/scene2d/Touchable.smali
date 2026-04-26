.class public final enum Lcom/badlogic/gdx/scenes/scene2d/Touchable;
.super Ljava/lang/Enum;
.source "Touchable.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/badlogic/gdx/scenes/scene2d/Touchable;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/badlogic/gdx/scenes/scene2d/Touchable;

.field public static final enum childrenOnly:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

.field public static final enum disabled:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

.field public static final enum enabled:Lcom/badlogic/gdx/scenes/scene2d/Touchable;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 23
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    const-string v1, "enabled"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Touchable;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->enabled:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    .line 25
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    const-string v1, "disabled"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Touchable;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->disabled:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    .line 28
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    const-string v1, "childrenOnly"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Touchable;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->childrenOnly:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    .line 21
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->enabled:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->disabled:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    sget-object v2, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->childrenOnly:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    filled-new-array {v0, v1, v2}, [Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->$VALUES:[Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/Touchable;
    .registers 2
    .param p0, "name"  # Ljava/lang/String;

    .line 21
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    return-object v0
.end method

.method public static values()[Lcom/badlogic/gdx/scenes/scene2d/Touchable;
    .registers 1

    .line 21
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->$VALUES:[Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    invoke-virtual {v0}, [Lcom/badlogic/gdx/scenes/scene2d/Touchable;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    return-object v0
.end method
