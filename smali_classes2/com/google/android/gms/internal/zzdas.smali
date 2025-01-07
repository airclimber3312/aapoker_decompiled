.class final Lcom/google/android/gms/internal/zzdas;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic zzkxi:Lcom/google/android/gms/internal/zzdar;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzdar;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzdas;->zzkxi:Lcom/google/android/gms/internal/zzdar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object p1, p0, Lcom/google/android/gms/internal/zzdas;->zzkxi:Lcom/google/android/gms/internal/zzdar;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzdar;->zza(Lcom/google/android/gms/internal/zzdar;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/internal/zzdas;->zzkxi:Lcom/google/android/gms/internal/zzdar;

    invoke-static {p2}, Lcom/google/android/gms/internal/zzdar;->zza(Lcom/google/android/gms/internal/zzdar;)Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, "Invoke the launch activity for package name: "

    if-eqz v0, :cond_0

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-static {p1}, Lcom/google/android/gms/internal/zzdal;->zzcy(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/zzdas;->zzkxi:Lcom/google/android/gms/internal/zzdar;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzdar;->zza(Lcom/google/android/gms/internal/zzdar;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    const-string v0, "No launch activity found for package name: "

    if-eqz p2, :cond_2

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-static {p1}, Lcom/google/android/gms/internal/zzdal;->zzcz(Ljava/lang/String;)V

    return-void
.end method
