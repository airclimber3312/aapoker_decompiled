.class public final Lcom/google/android/gms/internal/zzdlr;
.super Lcom/google/android/gms/internal/zzdlc;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzdlc<",
        "Lcom/google/android/gms/internal/zzdlh;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzlie:Lcom/google/android/gms/internal/zzdls;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzdls;)V
    .locals 1

    const-string v0, "TextNativeHandle"

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/zzdlc;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/zzdlr;->zzlie:Lcom/google/android/gms/internal/zzdls;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzdlc;->zzblo()Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method protected final synthetic zza(Lcom/google/android/gms/dynamite/DynamiteModule;Landroid/content/Context;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Lcom/google/android/gms/dynamite/DynamiteModule$zzc;
        }
    .end annotation

    const-string v0, "com.google.android.gms.vision.text.ChimeraNativeTextRecognizerCreator"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/dynamite/DynamiteModule;->zzhk(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const-string v0, "com.google.android.gms.vision.text.internal.client.INativeTextRecognizerCreator"

    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/internal/zzdlj;

    if-eqz v1, :cond_1

    move-object p1, v0

    check-cast p1, Lcom/google/android/gms/internal/zzdlj;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/zzdlk;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzdlk;-><init>(Landroid/os/IBinder;)V

    move-object p1, v0

    :goto_0
    invoke-static {p2}, Lcom/google/android/gms/dynamic/zzn;->zzz(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdlr;->zzlie:Lcom/google/android/gms/internal/zzdls;

    invoke-interface {p1, p2, v0}, Lcom/google/android/gms/internal/zzdlj;->zza(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/zzdls;)Lcom/google/android/gms/internal/zzdlh;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Landroid/graphics/Bitmap;Lcom/google/android/gms/internal/zzdld;Lcom/google/android/gms/internal/zzdln;)[Lcom/google/android/gms/internal/zzdll;
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzdlc;->isOperational()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-array p1, v1, [Lcom/google/android/gms/internal/zzdll;

    return-object p1

    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/dynamic/zzn;->zzz(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzdlc;->zzblo()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzdlh;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/zzdlh;->zza(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/zzdld;Lcom/google/android/gms/internal/zzdln;)[Lcom/google/android/gms/internal/zzdll;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const-string p2, "TextNativeHandle"

    const-string p3, "Error calling native text recognizer"

    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-array p1, v1, [Lcom/google/android/gms/internal/zzdll;

    return-object p1
.end method

.method protected final zzbll()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzdlc;->zzblo()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzdlh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzdlh;->zzblp()V

    return-void
.end method
