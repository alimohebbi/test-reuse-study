.class Lorg/openintents/distribution/InfoActivity$1;
.super Ljava/lang/Object;
.source "InfoActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/openintents/distribution/InfoActivity;->buildInfoDialog(I)Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/openintents/distribution/InfoActivity;

.field final synthetic val$pos:I


# direct methods
.method constructor <init>(Lorg/openintents/distribution/InfoActivity;I)V
    .locals 0
    .param p1, "this$0"    # Lorg/openintents/distribution/InfoActivity;

    .prologue
    .line 178
    iput-object p1, p0, Lorg/openintents/distribution/InfoActivity$1;->this$0:Lorg/openintents/distribution/InfoActivity;

    iput p2, p0, Lorg/openintents/distribution/InfoActivity$1;->val$pos:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 182
    iget-object v0, p0, Lorg/openintents/distribution/InfoActivity$1;->this$0:Lorg/openintents/distribution/InfoActivity;

    iget v1, p0, Lorg/openintents/distribution/InfoActivity$1;->val$pos:I

    invoke-virtual {v0, v1}, Lorg/openintents/distribution/InfoActivity;->launchApplication(I)V

    .line 183
    return-void
.end method
