.class public final enum Lcom/badlogic/gdx/Input$OnscreenKeyboardType;
.super Ljava/lang/Enum;
.source "Input.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/Input;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "OnscreenKeyboardType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/badlogic/gdx/Input$OnscreenKeyboardType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/badlogic/gdx/Input$OnscreenKeyboardType;

.field public static final enum Default:Lcom/badlogic/gdx/Input$OnscreenKeyboardType;

.field public static final enum Email:Lcom/badlogic/gdx/Input$OnscreenKeyboardType;

.field public static final enum NumberPad:Lcom/badlogic/gdx/Input$OnscreenKeyboardType;

.field public static final enum Password:Lcom/badlogic/gdx/Input$OnscreenKeyboardType;

.field public static final enum PhonePad:Lcom/badlogic/gdx/Input$OnscreenKeyboardType;

.field public static final enum URI:Lcom/badlogic/gdx/Input$OnscreenKeyboardType;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .line 789
    new-instance v0, Lcom/badlogic/gdx/Input$OnscreenKeyboardType;

    const-string v1, "Default"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/Input$OnscreenKeyboardType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/Input$OnscreenKeyboardType;->Default:Lcom/badlogic/gdx/Input$OnscreenKeyboardType;

    new-instance v0, Lcom/badlogic/gdx/Input$OnscreenKeyboardType;

    const-string v1, "NumberPad"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/Input$OnscreenKeyboardType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/Input$OnscreenKeyboardType;->NumberPad:Lcom/badlogic/gdx/Input$OnscreenKeyboardType;

    new-instance v0, Lcom/badlogic/gdx/Input$OnscreenKeyboardType;

    const-string v1, "PhonePad"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/Input$OnscreenKeyboardType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/Input$OnscreenKeyboardType;->PhonePad:Lcom/badlogic/gdx/Input$OnscreenKeyboardType;

    new-instance v0, Lcom/badlogic/gdx/Input$OnscreenKeyboardType;

    const-string v1, "Email"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/Input$OnscreenKeyboardType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/Input$OnscreenKeyboardType;->Email:Lcom/badlogic/gdx/Input$OnscreenKeyboardType;

    new-instance v0, Lcom/badlogic/gdx/Input$OnscreenKeyboardType;

    const-string v1, "Password"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/Input$OnscreenKeyboardType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/Input$OnscreenKeyboardType;->Password:Lcom/badlogic/gdx/Input$OnscreenKeyboardType;

    new-instance v0, Lcom/badlogic/gdx/Input$OnscreenKeyboardType;

    const-string v1, "URI"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/Input$OnscreenKeyboardType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/Input$OnscreenKeyboardType;->URI:Lcom/badlogic/gdx/Input$OnscreenKeyboardType;

    .line 788
    sget-object v3, Lcom/badlogic/gdx/Input$OnscreenKeyboardType;->Default:Lcom/badlogic/gdx/Input$OnscreenKeyboardType;

    sget-object v4, Lcom/badlogic/gdx/Input$OnscreenKeyboardType;->NumberPad:Lcom/badlogic/gdx/Input$OnscreenKeyboardType;

    sget-object v5, Lcom/badlogic/gdx/Input$OnscreenKeyboardType;->PhonePad:Lcom/badlogic/gdx/Input$OnscreenKeyboardType;

    sget-object v6, Lcom/badlogic/gdx/Input$OnscreenKeyboardType;->Email:Lcom/badlogic/gdx/Input$OnscreenKeyboardType;

    sget-object v7, Lcom/badlogic/gdx/Input$OnscreenKeyboardType;->Password:Lcom/badlogic/gdx/Input$OnscreenKeyboardType;

    sget-object v8, Lcom/badlogic/gdx/Input$OnscreenKeyboardType;->URI:Lcom/badlogic/gdx/Input$OnscreenKeyboardType;

    filled-new-array/range {v3 .. v8}, [Lcom/badlogic/gdx/Input$OnscreenKeyboardType;

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/Input$OnscreenKeyboardType;->$VALUES:[Lcom/badlogic/gdx/Input$OnscreenKeyboardType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 788
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/badlogic/gdx/Input$OnscreenKeyboardType;
    .registers 2
    .param p0, "name"  # Ljava/lang/String;

    .line 788
    const-class v0, Lcom/badlogic/gdx/Input$OnscreenKeyboardType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/Input$OnscreenKeyboardType;

    return-object v0
.end method

.method public static values()[Lcom/badlogic/gdx/Input$OnscreenKeyboardType;
    .registers 1

    .line 788
    sget-object v0, Lcom/badlogic/gdx/Input$OnscreenKeyboardType;->$VALUES:[Lcom/badlogic/gdx/Input$OnscreenKeyboardType;

    invoke-virtual {v0}, [Lcom/badlogic/gdx/Input$OnscreenKeyboardType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/badlogic/gdx/Input$OnscreenKeyboardType;

    return-object v0
.end method
