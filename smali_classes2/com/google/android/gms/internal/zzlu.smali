.class public abstract Lcom/google/android/gms/internal/zzlu;
.super Lcom/google/android/gms/internal/zzew;

# interfaces
.implements Lcom/google/android/gms/internal/zzlt;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzew;-><init>()V

    const-string v0, "com.google.android.gms.ads.internal.client.IAdManager"

    invoke-virtual {p0, p0, v0}, Lcom/google/android/gms/internal/zzlu;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static zzf(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzlt;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.google.android.gms.ads.internal.client.IAdManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/internal/zzlt;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/google/android/gms/internal/zzlt;

    return-object v0

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/zzlv;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzlv;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/zzew;->zza(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p4

    const/4 v0, 0x1

    if-eqz p4, :cond_0

    return v0

    :cond_0
    const/4 p4, 0x0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const/4 p1, 0x0

    return p1

    :pswitch_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzlu;->zzco()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_2

    :pswitch_2
    invoke-static {p2}, Lcom/google/android/gms/internal/zzex;->zza(Landroid/os/Parcel;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzlu;->setImmersiveMode(Z)V

    goto/16 :goto_6

    :pswitch_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzlu;->zzcd()Lcom/google/android/gms/internal/zzli;

    move-result-object p1

    goto/16 :goto_7

    :pswitch_4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzlu;->zzcc()Lcom/google/android/gms/internal/zzly;

    move-result-object p1

    goto/16 :goto_7

    :pswitch_5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzlu;->getAdUnitId()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_2

    :pswitch_6
    sget-object p1, Lcom/google/android/gms/internal/zzms;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/zzex;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/zzms;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzlu;->zza(Lcom/google/android/gms/internal/zzms;)V

    goto/16 :goto_6

    :pswitch_7
    sget-object p1, Lcom/google/android/gms/internal/zzns;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/zzex;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/zzns;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzlu;->zza(Lcom/google/android/gms/internal/zzns;)V

    goto/16 :goto_6

    :pswitch_8
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzlu;->getVideoController()Lcom/google/android/gms/internal/zzmm;

    move-result-object p1

    goto/16 :goto_7

    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzlu;->setUserId(Ljava/lang/String;)V

    goto/16 :goto_6

    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/zzafd;->zzaa(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzafc;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzlu;->zza(Lcom/google/android/gms/internal/zzafc;)V

    goto/16 :goto_6

    :pswitch_b
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzlu;->isLoading()Z

    move-result p1

    goto/16 :goto_5

    :pswitch_c
    invoke-static {p2}, Lcom/google/android/gms/internal/zzex;->zza(Landroid/os/Parcel;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzlu;->setManualImpressionsEnabled(Z)V

    goto/16 :goto_6

    :pswitch_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const-string p2, "com.google.android.gms.ads.internal.client.ICorrelationIdProvider"

    invoke-interface {p1, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    instance-of p4, p2, Lcom/google/android/gms/internal/zzme;

    if-eqz p4, :cond_2

    move-object p4, p2

    check-cast p4, Lcom/google/android/gms/internal/zzme;

    goto :goto_0

    :cond_2
    new-instance p4, Lcom/google/android/gms/internal/zzmg;

    invoke-direct {p4, p1}, Lcom/google/android/gms/internal/zzmg;-><init>(Landroid/os/IBinder;)V

    :goto_0
    invoke-virtual {p0, p4}, Lcom/google/android/gms/internal/zzlu;->zza(Lcom/google/android/gms/internal/zzme;)V

    goto/16 :goto_6

    :pswitch_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    const-string p2, "com.google.android.gms.ads.internal.client.IAdClickListener"

    invoke-interface {p1, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    instance-of p4, p2, Lcom/google/android/gms/internal/zzlf;

    if-eqz p4, :cond_4

    move-object p4, p2

    check-cast p4, Lcom/google/android/gms/internal/zzlf;

    goto :goto_1

    :cond_4
    new-instance p4, Lcom/google/android/gms/internal/zzlh;

    invoke-direct {p4, p1}, Lcom/google/android/gms/internal/zzlh;-><init>(Landroid/os/IBinder;)V

    :goto_1
    invoke-virtual {p0, p4}, Lcom/google/android/gms/internal/zzlu;->zza(Lcom/google/android/gms/internal/zzlf;)V

    goto/16 :goto_6

    :pswitch_f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/zzpc;->zzi(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzpb;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzlu;->zza(Lcom/google/android/gms/internal/zzpb;)V

    goto/16 :goto_6

    :pswitch_10
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzlu;->getMediationAdapterClassName()Ljava/lang/String;

    move-result-object p1

    :goto_2
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_8

    :pswitch_11
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/zzze;->zzy(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzzd;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/zzlu;->zza(Lcom/google/android/gms/internal/zzzd;Ljava/lang/String;)V

    goto/16 :goto_6

    :pswitch_12
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/zzyy;->zzw(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzyx;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzlu;->zza(Lcom/google/android/gms/internal/zzyx;)V

    goto/16 :goto_6

    :pswitch_13
    sget-object p1, Lcom/google/android/gms/internal/zzko;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/zzex;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/zzko;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzlu;->zza(Lcom/google/android/gms/internal/zzko;)V

    goto/16 :goto_6

    :pswitch_14
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzlu;->zzbq()Lcom/google/android/gms/internal/zzko;

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, p1}, Lcom/google/android/gms/internal/zzex;->zzb(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    goto/16 :goto_8

    :pswitch_15
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzlu;->zzbs()V

    goto/16 :goto_6

    :pswitch_16
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzlu;->stopLoading()V

    goto/16 :goto_6

    :pswitch_17
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzlu;->showInterstitial()V

    goto :goto_6

    :pswitch_18
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_5

    goto :goto_3

    :cond_5
    const-string p2, "com.google.android.gms.ads.internal.client.IAppEventListener"

    invoke-interface {p1, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    instance-of p4, p2, Lcom/google/android/gms/internal/zzly;

    if-eqz p4, :cond_6

    move-object p4, p2

    check-cast p4, Lcom/google/android/gms/internal/zzly;

    goto :goto_3

    :cond_6
    new-instance p4, Lcom/google/android/gms/internal/zzma;

    invoke-direct {p4, p1}, Lcom/google/android/gms/internal/zzma;-><init>(Landroid/os/IBinder;)V

    :goto_3
    invoke-virtual {p0, p4}, Lcom/google/android/gms/internal/zzlu;->zza(Lcom/google/android/gms/internal/zzly;)V

    goto :goto_6

    :pswitch_19
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_7

    goto :goto_4

    :cond_7
    const-string p2, "com.google.android.gms.ads.internal.client.IAdListener"

    invoke-interface {p1, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    instance-of p4, p2, Lcom/google/android/gms/internal/zzli;

    if-eqz p4, :cond_8

    move-object p4, p2

    check-cast p4, Lcom/google/android/gms/internal/zzli;

    goto :goto_4

    :cond_8
    new-instance p4, Lcom/google/android/gms/internal/zzlk;

    invoke-direct {p4, p1}, Lcom/google/android/gms/internal/zzlk;-><init>(Landroid/os/IBinder;)V

    :goto_4
    invoke-virtual {p0, p4}, Lcom/google/android/gms/internal/zzlu;->zza(Lcom/google/android/gms/internal/zzli;)V

    goto :goto_6

    :pswitch_1a
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzlu;->resume()V

    goto :goto_6

    :pswitch_1b
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzlu;->pause()V

    goto :goto_6

    :pswitch_1c
    sget-object p1, Lcom/google/android/gms/internal/zzkk;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/zzex;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/zzkk;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzlu;->zzb(Lcom/google/android/gms/internal/zzkk;)Z

    move-result p1

    goto :goto_5

    :pswitch_1d
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzlu;->isReady()Z

    move-result p1

    :goto_5
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, p1}, Lcom/google/android/gms/internal/zzex;->zza(Landroid/os/Parcel;Z)V

    goto :goto_8

    :pswitch_1e
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzlu;->destroy()V

    :goto_6
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8

    :pswitch_1f
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzlu;->zzbp()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    :goto_7
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, p1}, Lcom/google/android/gms/internal/zzex;->zza(Landroid/os/Parcel;Landroid/os/IInterface;)V

    :goto_8
    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_0
        :pswitch_0
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
