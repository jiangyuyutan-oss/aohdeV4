.class public Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sSPT;
.super Ljava/lang/Thread;
.source "sSPT.java"


# static fields
.field public static key:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 9
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sSPT;->key:Ljava/lang/String;

    invoke-static {v0}, Lage/of/civilizations2/jakowski/lukasz/Z_Other/ST/sUM;->createItem(Ljava/lang/String;)V

    .line 10
    return-void
.end method
