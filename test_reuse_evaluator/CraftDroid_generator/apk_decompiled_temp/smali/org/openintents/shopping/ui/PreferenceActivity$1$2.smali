.class Lorg/openintents/shopping/ui/PreferenceActivity$1$2;
.super Ljava/lang/Object;
.source "PreferenceActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/openintents/shopping/ui/PreferenceActivity$1;->onPreferenceClick(Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$1:Lorg/openintents/shopping/ui/PreferenceActivity$1;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lorg/openintents/shopping/ui/PreferenceActivity$1$2;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x2f248895411d2c9L    # -2.372387879415512E294

    const-string v2, "org/openintents/shopping/ui/PreferenceActivity$1$2"

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lorg/openintents/shopping/ui/PreferenceActivity$1$2;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lorg/openintents/shopping/ui/PreferenceActivity$1;)V
    .locals 3

    .prologue
    invoke-static {}, Lorg/openintents/shopping/ui/PreferenceActivity$1$2;->$jacocoInit()[Z

    move-result-object v0

    .line 277
    iput-object p1, p0, Lorg/openintents/shopping/ui/PreferenceActivity$1$2;->this$1:Lorg/openintents/shopping/ui/PreferenceActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    invoke-static {}, Lorg/openintents/shopping/ui/PreferenceActivity$1$2;->$jacocoInit()[Z

    move-result-object v0

    .line 281
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 282
    aput-boolean v1, v0, v1

    return-void
.end method
