.class public Lage/of/civilizations2/jakowski/lukasz/Editor/EditorMapProvinceNamePoints;
.super Ljava/lang/Object;
.source "EditorMapProvinceNamePoints.java"


# static fields
.field public static centerPoint:Z

.field public static firstPoint:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 5
    const/4 v0, 0x1

    sput-boolean v0, Lage/of/civilizations2/jakowski/lukasz/Editor/EditorMapProvinceNamePoints;->firstPoint:Z

    .line 6
    const/4 v0, 0x0

    sput-boolean v0, Lage/of/civilizations2/jakowski/lukasz/Editor/EditorMapProvinceNamePoints;->centerPoint:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
