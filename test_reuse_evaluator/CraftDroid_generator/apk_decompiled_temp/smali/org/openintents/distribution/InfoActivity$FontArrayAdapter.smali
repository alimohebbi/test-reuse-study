.class Lorg/openintents/distribution/InfoActivity$FontArrayAdapter;
.super Landroid/widget/ArrayAdapter;
.source "InfoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openintents/distribution/InfoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FontArrayAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/widget/ArrayAdapter",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/openintents/distribution/InfoActivity;


# direct methods
.method public constructor <init>(Lorg/openintents/distribution/InfoActivity;Landroid/content/Context;I[Ljava/lang/Object;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "textViewResourceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I[TT;)V"
        }
    .end annotation

    .prologue
    .line 115
    .local p0, "this":Lorg/openintents/distribution/InfoActivity$FontArrayAdapter;, "Lorg/openintents/distribution/InfoActivity$FontArrayAdapter<TT;>;"
    .local p4, "objects":[Ljava/lang/Object;, "[TT;"
    iput-object p1, p0, Lorg/openintents/distribution/InfoActivity$FontArrayAdapter;->this$0:Lorg/openintents/distribution/InfoActivity;

    .line 116
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 117
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 122
    .local p0, "this":Lorg/openintents/distribution/InfoActivity$FontArrayAdapter;, "Lorg/openintents/distribution/InfoActivity$FontArrayAdapter<TT;>;"
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 128
    .local v0, "tv":Landroid/widget/TextView;
    return-object v0
.end method
