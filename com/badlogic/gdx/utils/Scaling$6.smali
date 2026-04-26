.class final Lcom/badlogic/gdx/utils/Scaling$6;
.super Lcom/badlogic/gdx/utils/Scaling;
.source "Scaling.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/utils/Scaling;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 89
    invoke-direct {p0}, Lcom/badlogic/gdx/utils/Scaling;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(FFFF)Lcom/badlogic/gdx/math/Vector2;
    .registers 6
    .param p1, "sourceWidth"  # F
    .param p2, "sourceHeight"  # F
    .param p3, "targetWidth"  # F
    .param p4, "targetHeight"  # F

    .line 91
    sget-object v0, Lcom/badlogic/gdx/utils/Scaling$6;->temp:Lcom/badlogic/gdx/math/Vector2;

    iput p3, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 92
    sget-object v0, Lcom/badlogic/gdx/utils/Scaling$6;->temp:Lcom/badlogic/gdx/math/Vector2;

    iput p2, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 93
    sget-object v0, Lcom/badlogic/gdx/utils/Scaling$6;->temp:Lcom/badlogic/gdx/math/Vector2;

    return-object v0
.end method
