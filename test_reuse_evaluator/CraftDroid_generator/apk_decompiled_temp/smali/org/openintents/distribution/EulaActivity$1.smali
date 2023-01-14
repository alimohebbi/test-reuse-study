.class Lorg/openintents/distribution/EulaActivity$1;
.super Ljava/lang/Object;
.source "EulaActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/openintents/distribution/EulaActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/openintents/distribution/EulaActivity;


# direct methods
.method constructor <init>(Lorg/openintents/distribution/EulaActivity;)V
    .locals 0
    .param p1, "this$0"    # Lorg/openintents/distribution/EulaActivity;

    .prologue
    .line 75
    iput-object p1, p0, Lorg/openintents/distribution/EulaActivity$1;->this$0:Lorg/openintents/distribution/EulaActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 77
    iget-object v0, p0, Lorg/openintents/distribution/EulaActivity$1;->this$0:Lorg/openintents/distribution/EulaActivity;

    invoke-virtual {v0}, Lorg/openintents/distribution/EulaActivity;->accept()V

    .line 78
    return-void
.end method
