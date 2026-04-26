.class public Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;
.super Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
.source "Value.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Fixed"
.end annotation


# static fields
.field static final cache:[Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;


# instance fields
.field private final value:F


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 41
    const/16 v0, 0x6f

    new-array v0, v0, [Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->cache:[Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    return-void
.end method

.method public constructor <init>(F)V
    .registers 2
    .param p1, "value"  # F

    .line 45
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;-><init>()V

    .line 46
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->value:F

    .line 47
    return-void
.end method

.method public static valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;
    .registers 5
    .param p0, "value"  # F

    .line 58
    const/4 v0, 0x0

    cmpl-float v0, p0, v0

    if-nez v0, :cond_8

    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->zero:Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    return-object v0

    .line 59
    :cond_8
    const/high16 v0, -0x3ee00000  # -10.0f

    cmpl-float v0, p0, v0

    if-ltz v0, :cond_31

    const/high16 v0, 0x42c80000  # 100.0f

    cmpg-float v0, p0, v0

    if-gtz v0, :cond_31

    float-to-int v0, p0

    int-to-float v0, v0

    cmpl-float v0, p0, v0

    if-nez v0, :cond_31

    .line 60
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->cache:[Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    float-to-int v1, p0

    add-int/lit8 v1, v1, 0xa

    aget-object v0, v0, v1

    .line 61
    .local v0, "fixed":Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;
    if-nez v0, :cond_30

    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->cache:[Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    float-to-int v2, p0

    add-int/lit8 v2, v2, 0xa

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    invoke-direct {v3, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;-><init>(F)V

    move-object v0, v3

    aput-object v3, v1, v2

    .line 62
    :cond_30
    return-object v0

    .line 64
    .end local v0  # "fixed":Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;
    :cond_31
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;-><init>(F)V

    return-object v0
.end method


# virtual methods
.method public get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F
    .registers 3
    .param p1, "context"  # Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 50
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->value:F

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 54
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->value:F

    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
