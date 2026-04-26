.class public final synthetic Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 0
    check-cast p1, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM$CivData;

    check-cast p2, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM$CivData;

    invoke-static {p1, p2}, Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM;->lambda$getSortedCivs$0(Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM$CivData;Lage/of/civilizations2/jakowski/lukasz/Menus/Colonization/Menu_MM$CivData;)I

    move-result p1

    return p1
.end method
