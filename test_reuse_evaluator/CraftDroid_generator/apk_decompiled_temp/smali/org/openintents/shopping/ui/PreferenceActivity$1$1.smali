.class Lorg/openintents/shopping/ui/PreferenceActivity$1$1;
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

    sget-object v0, Lorg/openintents/shopping/ui/PreferenceActivity$1$1;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x4171ae2b54ef475bL    # -2.2589900575256892E-7

    const-string v2, "org/openintents/shopping/ui/PreferenceActivity$1$1"

    const/16 v3, 0x20

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lorg/openintents/shopping/ui/PreferenceActivity$1$1;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lorg/openintents/shopping/ui/PreferenceActivity$1;)V
    .locals 3

    .prologue
    invoke-static {}, Lorg/openintents/shopping/ui/PreferenceActivity$1$1;->$jacocoInit()[Z

    move-result-object v0

    .line 201
    iput-object p1, p0, Lorg/openintents/shopping/ui/PreferenceActivity$1$1;->this$1:Lorg/openintents/shopping/ui/PreferenceActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    invoke-static {}, Lorg/openintents/shopping/ui/PreferenceActivity$1$1;->$jacocoInit()[Z

    move-result-object v0

    .line 205
    iget-object v1, p0, Lorg/openintents/shopping/ui/PreferenceActivity$1$1;->this$1:Lorg/openintents/shopping/ui/PreferenceActivity$1;

    iget-object v1, v1, Lorg/openintents/shopping/ui/PreferenceActivity$1;->val$prefs:Landroid/content/SharedPreferences;

    aput-boolean v5, v0, v5

    .line 206
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const/4 v2, 0x2

    aput-boolean v5, v0, v2

    .line 208
    const-string v2, "fontsize"

    const-string v3, "2"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const/4 v2, 0x3

    aput-boolean v5, v0, v2

    .line 210
    const-string v2, "sortorder"

    const-string v3, "3"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 213
    const-string v2, "capitalization"

    const/4 v3, 0x4

    aput-boolean v5, v0, v3

    .line 215
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x5

    aput-boolean v5, v0, v4

    .line 213
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const/4 v2, 0x6

    aput-boolean v5, v0, v2

    .line 216
    const-string v2, "orientation"

    const-string v3, "-1"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const/4 v2, 0x7

    aput-boolean v5, v0, v2

    .line 218
    const-string v2, "hidechecked"

    invoke-interface {v1, v2, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const/16 v2, 0x8

    aput-boolean v5, v0, v2

    .line 220
    const-string v2, "fastscroll"

    invoke-interface {v1, v2, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const/16 v2, 0x9

    aput-boolean v5, v0, v2

    .line 222
    const-string v2, "shake"

    invoke-interface {v1, v2, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const/16 v2, 0xa

    aput-boolean v5, v0, v2

    .line 224
    const-string v2, "perstoreprices"

    invoke-interface {v1, v2, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const/16 v2, 0xb

    aput-boolean v5, v0, v2

    .line 226
    const-string v2, "addforbarcode"

    invoke-interface {v1, v2, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const/16 v2, 0xc

    aput-boolean v5, v0, v2

    .line 228
    const-string v2, "screenlock"

    invoke-interface {v1, v2, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const/16 v2, 0xd

    aput-boolean v5, v0, v2

    .line 230
    const-string v2, "quickedit"

    invoke-interface {v1, v2, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const/16 v2, 0xe

    aput-boolean v5, v0, v2

    .line 232
    const-string v2, "use_filters"

    invoke-interface {v1, v2, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const/16 v2, 0xf

    aput-boolean v5, v0, v2

    .line 234
    const-string v2, "resetquantity"

    invoke-interface {v1, v2, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const/16 v2, 0x10

    aput-boolean v5, v0, v2

    .line 237
    const-string v2, "showprice"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const/16 v2, 0x11

    aput-boolean v5, v0, v2

    .line 239
    const-string v2, "showtags"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const/16 v2, 0x12

    aput-boolean v5, v0, v2

    .line 241
    const-string v2, "showunits"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const/16 v2, 0x13

    aput-boolean v5, v0, v2

    .line 243
    const-string v2, "showquantity"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const/16 v2, 0x14

    aput-boolean v5, v0, v2

    .line 245
    const-string v2, "showpriority"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const/16 v2, 0x15

    aput-boolean v5, v0, v2

    .line 248
    const-string v2, "samesortforpick"

    invoke-interface {v1, v2, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const/16 v2, 0x16

    aput-boolean v5, v0, v2

    .line 251
    const-string v2, "sortorderForPickItems"

    const-string v3, "1"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const/16 v2, 0x17

    aput-boolean v5, v0, v2

    .line 254
    const-string v2, "pickitemsinlist"

    invoke-interface {v1, v2, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const/16 v2, 0x18

    aput-boolean v5, v0, v2

    .line 257
    const-string v2, "sortorderForShoppingLists"

    const-string v3, "0"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const/16 v2, 0x19

    aput-boolean v5, v0, v2

    .line 261
    const-string v2, "priority_subtotal_threshold"

    const-string v3, "0"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const/16 v2, 0x1a

    aput-boolean v5, v0, v2

    .line 263
    const-string v2, "priosubtotal_includes_checked"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const/16 v2, 0x1b

    aput-boolean v5, v0, v2

    .line 267
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const/16 v1, 0x1c

    aput-boolean v5, v0, v1

    .line 269
    iget-object v1, p0, Lorg/openintents/shopping/ui/PreferenceActivity$1$1;->this$1:Lorg/openintents/shopping/ui/PreferenceActivity$1;

    iget-object v1, v1, Lorg/openintents/shopping/ui/PreferenceActivity$1;->this$0:Lorg/openintents/shopping/ui/PreferenceActivity;

    const v2, 0x7f08009b

    invoke-static {v1, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    const/16 v2, 0x1d

    aput-boolean v5, v0, v2

    .line 272
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    const/16 v1, 0x1e

    aput-boolean v5, v0, v1

    .line 273
    iget-object v1, p0, Lorg/openintents/shopping/ui/PreferenceActivity$1$1;->this$1:Lorg/openintents/shopping/ui/PreferenceActivity$1;

    iget-object v1, v1, Lorg/openintents/shopping/ui/PreferenceActivity$1;->this$0:Lorg/openintents/shopping/ui/PreferenceActivity;

    invoke-virtual {v1}, Lorg/openintents/shopping/ui/PreferenceActivity;->finish()V

    .line 274
    const/16 v1, 0x1f

    aput-boolean v5, v0, v1

    return-void
.end method
