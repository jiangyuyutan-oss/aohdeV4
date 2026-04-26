.class public Lage/of/civilizations2/jakowski/lukasz/EventTemplate;
.super Ljava/lang/Object;
.source "EventTemplate.java"


# instance fields
.field public BG_IMG:Ljava/lang/String;

.field public TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "TAG"  # Ljava/lang/String;
    .param p2, "BG_IMG"  # Ljava/lang/String;
    .param p3, "DEFAULT_IMG"  # Ljava/lang/String;

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/EventTemplate;->TAG:Ljava/lang/String;

    .line 10
    iput-object p2, p0, Lage/of/civilizations2/jakowski/lukasz/EventTemplate;->BG_IMG:Ljava/lang/String;

    .line 11
    return-void
.end method
