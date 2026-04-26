.class Lage/of/civilizations2/jakowski/lukasz/Menus/Challenge/Menu_ChallengeInGame$2;
.super Lage/of/civilizations2/jakowski/lukasz/Button2/ButtonFlagBigCh;
.source "Menu_ChallengeInGame.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/Menus/Challenge/Menu_ChallengeInGame;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Challenge/Menu_ChallengeInGame;


# direct methods
.method constructor <init>(Lage/of/civilizations2/jakowski/lukasz/Menus/Challenge/Menu_ChallengeInGame;ILjava/lang/String;IIZ)V
    .registers 13
    .param p1, "this$0"  # Lage/of/civilizations2/jakowski/lukasz/Menus/Challenge/Menu_ChallengeInGame;
    .param p2, "id"  # I
    .param p3, "nCivTag"  # Ljava/lang/String;
    .param p4, "iPosX"  # I
    .param p5, "iPosY"  # I
    .param p6, "isClickable"  # Z

    .line 76
    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/Menus/Challenge/Menu_ChallengeInGame$2;->this$0:Lage/of/civilizations2/jakowski/lukasz/Menus/Challenge/Menu_ChallengeInGame;

    move-object v0, p0

    move v1, p2

    move-object v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lage/of/civilizations2/jakowski/lukasz/Button2/ButtonFlagBigCh;-><init>(ILjava/lang/String;IIZ)V

    return-void
.end method


# virtual methods
.method public actionElem(I)V
    .registers 2
    .param p1, "iID"  # I

    .line 80
    return-void
.end method
