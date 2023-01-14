.class Lorg/openintents/shopping/ui/ShoppingActivity$HoloThemeSimpleCursorAdapter;
.super Landroid/widget/SimpleCursorAdapter;
.source "ShoppingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openintents/shopping/ui/ShoppingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HoloThemeSimpleCursorAdapter"
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$0:Lorg/openintents/shopping/ui/ShoppingActivity;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lorg/openintents/shopping/ui/ShoppingActivity$HoloThemeSimpleCursorAdapter;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x23e83cdfc665380cL    # -4.317823685161112E135

    const-string v2, "org/openintents/shopping/ui/ShoppingActivity$HoloThemeSimpleCursorAdapter"

    const/4 v3, 0x4

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lorg/openintents/shopping/ui/ShoppingActivity$HoloThemeSimpleCursorAdapter;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(Lorg/openintents/shopping/ui/ShoppingActivity;Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    invoke-static {}, Lorg/openintents/shopping/ui/ShoppingActivity$HoloThemeSimpleCursorAdapter;->$jacocoInit()[Z

    move-result-object v6

    .line 2818
    iput-object p1, p0, Lorg/openintents/shopping/ui/ShoppingActivity$HoloThemeSimpleCursorAdapter;->this$0:Lorg/openintents/shopping/ui/ShoppingActivity;

    const/4 v0, 0x0

    aput-boolean v7, v6, v0

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    .line 2819
    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    .line 2820
    aput-boolean v7, v6, v7

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lorg/openintents/shopping/ui/ShoppingActivity$HoloThemeSimpleCursorAdapter;->$jacocoInit()[Z

    move-result-object v0

    .line 2824
    invoke-super {p0, p1, p2, p3}, Landroid/widget/SimpleCursorAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x2

    aput-boolean v3, v0, v2

    .line 2825
    iget-object v2, p0, Lorg/openintents/shopping/ui/ShoppingActivity$HoloThemeSimpleCursorAdapter;->this$0:Lorg/openintents/shopping/ui/ShoppingActivity;

    invoke-static {v2, v1}, Lorg/openintents/shopping/ui/ShoppingActivity;->access$1800(Lorg/openintents/shopping/ui/ShoppingActivity;Landroid/view/View;)V

    .line 2826
    const/4 v2, 0x3

    aput-boolean v3, v0, v2

    return-object v1
.end method
