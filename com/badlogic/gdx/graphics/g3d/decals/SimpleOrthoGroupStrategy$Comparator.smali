.class Lcom/badlogic/gdx/graphics/g3d/decals/SimpleOrthoGroupStrategy$Comparator;
.super Ljava/lang/Object;
.source "SimpleOrthoGroupStrategy.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/graphics/g3d/decals/SimpleOrthoGroupStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Comparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/badlogic/gdx/graphics/g3d/decals/Decal;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/badlogic/gdx/graphics/g3d/decals/SimpleOrthoGroupStrategy;


# direct methods
.method constructor <init>(Lcom/badlogic/gdx/graphics/g3d/decals/SimpleOrthoGroupStrategy;)V
    .registers 2
    .param p1, "this$0"  # Lcom/badlogic/gdx/graphics/g3d/decals/SimpleOrthoGroupStrategy;

    .line 110
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/decals/SimpleOrthoGroupStrategy$Comparator;->this$0:Lcom/badlogic/gdx/graphics/g3d/decals/SimpleOrthoGroupStrategy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/badlogic/gdx/graphics/g3d/decals/Decal;Lcom/badlogic/gdx/graphics/g3d/decals/Decal;)I
    .registers 5
    .param p1, "a"  # Lcom/badlogic/gdx/graphics/g3d/decals/Decal;
    .param p2, "b"  # Lcom/badlogic/gdx/graphics/g3d/decals/Decal;

    .line 113
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->getZ()F

    move-result v0

    invoke-virtual {p2}, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->getZ()F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_e

    const/4 v0, 0x0

    return v0

    .line 114
    :cond_e
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->getZ()F

    move-result v0

    invoke-virtual {p2}, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->getZ()F

    move-result v1

    sub-float/2addr v0, v1

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1e

    const/4 v0, -0x1

    goto :goto_1f

    :cond_1e
    const/4 v0, 0x1

    :goto_1f
    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 110
    check-cast p1, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;

    check-cast p2, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;

    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/decals/SimpleOrthoGroupStrategy$Comparator;->compare(Lcom/badlogic/gdx/graphics/g3d/decals/Decal;Lcom/badlogic/gdx/graphics/g3d/decals/Decal;)I

    move-result p1

    return p1
.end method
