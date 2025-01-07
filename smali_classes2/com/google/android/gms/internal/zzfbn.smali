.class public final Lcom/google/android/gms/internal/zzfbn;
.super Ljava/lang/Object;


# instance fields
.field private zzleq:Ljava/lang/Exception;

.field private zzoxv:Lcom/google/android/gms/internal/zzfbi;

.field private zzoxw:I

.field private zzoxx:Ljava/lang/Exception;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzfbi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzfbn;->zzoxv:Lcom/google/android/gms/internal/zzfbi;

    return-void
.end method

.method private final zza(Ljava/lang/Exception;Ljava/lang/String;)V
    .locals 1

    const-string v0, "NetworkRequestProxy"

    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iput-object p1, p0, Lcom/google/android/gms/internal/zzfbn;->zzleq:Ljava/lang/Exception;

    return-void
.end method


# virtual methods
.method public final getException()Ljava/lang/Exception;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfbn;->zzoxx:Ljava/lang/Exception;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfbn;->zzleq:Ljava/lang/Exception;

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfbn;->zzoxv:Lcom/google/android/gms/internal/zzfbi;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzfbi;->zzcor()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/dynamic/zzn;->zzy(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Exception;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "getException failed with a RemoteException"

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/zzfbn;->zza(Ljava/lang/Exception;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getResultCode()I
    .locals 2

    :try_start_0
    iget v0, p0, Lcom/google/android/gms/internal/zzfbn;->zzoxw:I

    if-eqz v0, :cond_0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfbn;->zzoxv:Lcom/google/android/gms/internal/zzfbi;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzfbi;->getResultCode()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "getResultCode failed with a RemoteException"

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/zzfbn;->zza(Ljava/lang/Exception;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public final getStream()Ljava/io/InputStream;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfbn;->zzoxv:Lcom/google/android/gms/internal/zzfbi;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzfbi;->zzcoo()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/dynamic/zzn;->zzy(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "getStream failed with a RemoteException"

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/zzfbn;->zza(Ljava/lang/Exception;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final reset()V
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lcom/google/android/gms/internal/zzfbn;->zzoxw:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfbn;->zzoxx:Ljava/lang/Exception;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfbn;->zzoxv:Lcom/google/android/gms/internal/zzfbi;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzfbi;->reset()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "reset failed with a RemoteException"

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/zzfbn;->zza(Ljava/lang/Exception;Ljava/lang/String;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/tasks/TaskCompletionSource;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/tasks/TaskCompletionSource<",
            "TTResult;>;TTResult;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzfbn;->getException()Ljava/lang/Exception;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzfbn;->zzcos()Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzfbn;->getResultCode()I

    move-result p2

    invoke-static {v0, p2}, Lcom/google/firebase/storage/StorageException;->fromExceptionAndHttpCode(Ljava/lang/Throwable;I)Lcom/google/firebase/storage/StorageException;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    return-void
.end method

.method public final zzbo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfbn;->zzoxv:Lcom/google/android/gms/internal/zzfbi;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/zzfbi;->zzbo(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p2

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, "Caught remote exception setting custom header:"

    if-eqz v0, :cond_0

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    const-string v0, "NetworkRequestProxy"

    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final zzcon()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfbn;->zzoxv:Lcom/google/android/gms/internal/zzfbi;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzfbi;->zzcon()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "performRequestEnd failed with a RemoteException"

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/zzfbn;->zza(Ljava/lang/Exception;Ljava/lang/String;)V

    return-void
.end method

.method public final zzcoq()Ljava/lang/String;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfbn;->zzoxv:Lcom/google/android/gms/internal/zzfbi;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzfbi;->zzcoq()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "getRawResult failed with a RemoteException"

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/zzfbn;->zza(Ljava/lang/Exception;Ljava/lang/String;)V

    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final zzcos()Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget v1, p0, Lcom/google/android/gms/internal/zzfbn;->zzoxw:I

    const/4 v2, -0x2

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfbn;->zzoxx:Ljava/lang/Exception;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzfbn;->zzoxv:Lcom/google/android/gms/internal/zzfbi;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzfbi;->zzcos()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return v0

    :catch_0
    move-exception v1

    const-string v2, "isResultSuccess failed with a RemoteException"

    invoke-direct {p0, v1, v2}, Lcom/google/android/gms/internal/zzfbn;->zza(Ljava/lang/Exception;Ljava/lang/String;)V

    return v0
.end method

.method public final zzcot()I
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfbn;->zzoxv:Lcom/google/android/gms/internal/zzfbi;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzfbi;->zzcot()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "getResultingContentLength failed with a RemoteException"

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/zzfbn;->zza(Ljava/lang/Exception;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public final zzcov()Lorg/json/JSONObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfbn;->zzoxv:Lcom/google/android/gms/internal/zzfbi;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzfbi;->zzcop()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/dynamic/zzn;->zzy(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    return-object v0
.end method

.method public final zze(Ljava/lang/String;Landroid/content/Context;)V
    .locals 1

    :try_start_0
    const-string v0, "connectivity"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/net/ConnectivityManager;

    invoke-virtual {p2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p2, -0x2

    iput p2, p0, Lcom/google/android/gms/internal/zzfbn;->zzoxw:I

    new-instance p2, Ljava/net/SocketException;

    const-string v0, "Network subsystem is unavailable"

    invoke-direct {p2, v0}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/zzfbn;->zzoxx:Ljava/lang/Exception;

    const/4 p2, 0x0

    :goto_1
    if-nez p2, :cond_2

    return-void

    :cond_2
    iget-object p2, p0, Lcom/google/android/gms/internal/zzfbn;->zzoxv:Lcom/google/android/gms/internal/zzfbi;

    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/zzfbi;->zzsr(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    iget-object p1, p0, Lcom/google/android/gms/internal/zzfbn;->zzleq:Ljava/lang/Exception;

    const-string p2, "performRequest failed with a RemoteException"

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/zzfbn;->zza(Ljava/lang/Exception;Ljava/lang/String;)V

    return-void
.end method

.method public final zzss(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfbn;->zzoxv:Lcom/google/android/gms/internal/zzfbi;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzfbi;->zzss(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "performRequestStart failed with a RemoteException"

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/zzfbn;->zza(Ljava/lang/Exception;Ljava/lang/String;)V

    return-void
.end method

.method public final zzst(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfbn;->zzoxv:Lcom/google/android/gms/internal/zzfbi;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzfbi;->zzst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "getResultString failed with a RemoteException:"

    if-eqz v1, :cond_0

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    const-string v1, "NetworkRequestProxy"

    invoke-static {v1, p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    return-object p1
.end method
