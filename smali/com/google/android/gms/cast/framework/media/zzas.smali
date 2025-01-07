.class final Lcom/google/android/gms/cast/framework/media/zzas;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic zzfgk:Lcom/google/android/gms/cast/framework/media/TracksChooserDialogFragment;

.field private synthetic zzfgl:Lcom/google/android/gms/cast/framework/media/zzat;

.field private synthetic zzfgm:Lcom/google/android/gms/cast/framework/media/zzat;


# direct methods
.method constructor <init>(Lcom/google/android/gms/cast/framework/media/TracksChooserDialogFragment;Lcom/google/android/gms/cast/framework/media/zzat;Lcom/google/android/gms/cast/framework/media/zzat;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/cast/framework/media/zzas;->zzfgk:Lcom/google/android/gms/cast/framework/media/TracksChooserDialogFragment;

    iput-object p2, p0, Lcom/google/android/gms/cast/framework/media/zzas;->zzfgl:Lcom/google/android/gms/cast/framework/media/zzat;

    iput-object p3, p0, Lcom/google/android/gms/cast/framework/media/zzas;->zzfgm:Lcom/google/android/gms/cast/framework/media/zzat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/zzas;->zzfgk:Lcom/google/android/gms/cast/framework/media/TracksChooserDialogFragment;

    iget-object p2, p0, Lcom/google/android/gms/cast/framework/media/zzas;->zzfgl:Lcom/google/android/gms/cast/framework/media/zzat;

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/zzas;->zzfgm:Lcom/google/android/gms/cast/framework/media/zzat;

    invoke-static {p1, p2, v0}, Lcom/google/android/gms/cast/framework/media/TracksChooserDialogFragment;->zza(Lcom/google/android/gms/cast/framework/media/TracksChooserDialogFragment;Lcom/google/android/gms/cast/framework/media/zzat;Lcom/google/android/gms/cast/framework/media/zzat;)V

    return-void
.end method
