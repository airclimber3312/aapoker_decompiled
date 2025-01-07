.class final Lcom/google/android/gms/internal/zzbbp;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzbay;


# instance fields
.field private synthetic zzfht:Lcom/google/android/gms/internal/zzbbo;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbbo;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbbp;->zzfht:Lcom/google/android/gms/internal/zzbbo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzc(Landroid/graphics/Bitmap;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbbp;->zzfht:Lcom/google/android/gms/internal/zzbbo;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbbo;->zza(Lcom/google/android/gms/internal/zzbbo;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method
