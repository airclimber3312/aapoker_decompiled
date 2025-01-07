.class public final Lcom/google/android/gms/internal/zzdar;
.super Ljava/lang/Object;


# instance fields
.field private final mIntent:Landroid/content/Intent;

.field private final zzevc:Landroid/content/Context;

.field private final zzhdo:Landroid/content/Context;

.field private final zzkuf:Lcom/google/android/gms/internal/zzdbo;


# direct methods
.method public constructor <init>(Landroid/content/Intent;Landroid/content/Context;Landroid/content/Context;Lcom/google/android/gms/internal/zzdbo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/zzdar;->zzevc:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzdar;->zzhdo:Landroid/content/Context;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzdar;->mIntent:Landroid/content/Intent;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzdar;->zzkuf:Lcom/google/android/gms/internal/zzdbo;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzdar;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzdar;->zzevc:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public final zzbiz()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdar;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzdar;->zzkuf:Lcom/google/android/gms/internal/zzdbo;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzdbo;->zzr(Landroid/net/Uri;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdar;->zzhdo:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/gms/R$string;->tagmanager_preview_dialog_title:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzdar;->zzhdo:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/google/android/gms/R$string;->tagmanager_preview_dialog_message:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzdar;->zzhdo:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/google/android/gms/R$string;->tagmanager_preview_dialog_button:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzdar;->zzevc:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    new-instance v0, Lcom/google/android/gms/internal/zzdas;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzdas;-><init>(Lcom/google/android/gms/internal/zzdar;)V

    const/4 v1, -0x1

    invoke-virtual {v3, v1, v2, v0}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "Calling preview threw an exception: "

    if-eqz v1, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/zzdal;->e(Ljava/lang/String;)V

    return-void
.end method
