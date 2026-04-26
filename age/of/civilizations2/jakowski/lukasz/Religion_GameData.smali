.class public Lage/of/civilizations2/jakowski/lukasz/Religion_GameData;
.super Ljava/lang/Object;
.source "Religion_GameData.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private oColor:Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

.field private sIconName:Ljava/lang/String;

.field private sName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getColor()Lage/of/civilizations2/jakowski/lukasz/Color_GameData;
    .registers 2

    .line 32
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Religion_GameData;->oColor:Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    return-object v0
.end method

.method public getIconName()Ljava/lang/String;
    .registers 2

    .line 40
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Religion_GameData;->sIconName:Ljava/lang/String;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .registers 2

    .line 24
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Religion_GameData;->sName:Ljava/lang/String;

    return-object v0
.end method

.method public final setColor(Lage/of/civilizations2/jakowski/lukasz/Color_GameData;)V
    .registers 2
    .param p1, "oColor"  # Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    .line 36
    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Religion_GameData;->oColor:Lage/of/civilizations2/jakowski/lukasz/Color_GameData;

    .line 37
    return-void
.end method

.method public setIconName(Ljava/lang/String;)V
    .registers 2
    .param p1, "sIconName"  # Ljava/lang/String;

    .line 44
    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Religion_GameData;->sIconName:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public final setName(Ljava/lang/String;)V
    .registers 2
    .param p1, "sName"  # Ljava/lang/String;

    .line 28
    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Religion_GameData;->sName:Ljava/lang/String;

    .line 29
    return-void
.end method
