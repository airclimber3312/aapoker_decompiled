.class public final Lcom/google/firebase/auth/internal/zzb;
.super Ljava/lang/Object;


# direct methods
.method public static zza(Lcom/google/firebase/auth/AuthCredential;)Lcom/google/android/gms/internal/zzeci;
    .locals 2

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-class v0, Lcom/google/firebase/auth/GoogleAuthCredential;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p0, Lcom/google/firebase/auth/GoogleAuthCredential;

    invoke-static {p0}, Lcom/google/firebase/auth/GoogleAuthCredential;->zza(Lcom/google/firebase/auth/GoogleAuthCredential;)Lcom/google/android/gms/internal/zzeci;

    move-result-object p0

    return-object p0

    :cond_0
    const-class v0, Lcom/google/firebase/auth/FacebookAuthCredential;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    check-cast p0, Lcom/google/firebase/auth/FacebookAuthCredential;

    invoke-static {p0}, Lcom/google/firebase/auth/FacebookAuthCredential;->zza(Lcom/google/firebase/auth/FacebookAuthCredential;)Lcom/google/android/gms/internal/zzeci;

    move-result-object p0

    return-object p0

    :cond_1
    const-class v0, Lcom/google/firebase/auth/TwitterAuthCredential;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    check-cast p0, Lcom/google/firebase/auth/TwitterAuthCredential;

    invoke-static {p0}, Lcom/google/firebase/auth/TwitterAuthCredential;->zza(Lcom/google/firebase/auth/TwitterAuthCredential;)Lcom/google/android/gms/internal/zzeci;

    move-result-object p0

    return-object p0

    :cond_2
    const-class v0, Lcom/google/firebase/auth/GithubAuthCredential;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    check-cast p0, Lcom/google/firebase/auth/GithubAuthCredential;

    invoke-static {p0}, Lcom/google/firebase/auth/GithubAuthCredential;->zza(Lcom/google/firebase/auth/GithubAuthCredential;)Lcom/google/android/gms/internal/zzeci;

    move-result-object p0

    return-object p0

    :cond_3
    const-class v0, Lcom/google/firebase/auth/PlayGamesAuthCredential;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_4

    check-cast p0, Lcom/google/firebase/auth/PlayGamesAuthCredential;

    invoke-static {p0}, Lcom/google/firebase/auth/PlayGamesAuthCredential;->zza(Lcom/google/firebase/auth/PlayGamesAuthCredential;)Lcom/google/android/gms/internal/zzeci;

    move-result-object p0

    return-object p0

    :cond_4
    const-class v0, Lcom/google/firebase/auth/zzd;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_5

    check-cast p0, Lcom/google/firebase/auth/zzd;

    invoke-static {p0}, Lcom/google/firebase/auth/zzd;->zza(Lcom/google/firebase/auth/zzd;)Lcom/google/android/gms/internal/zzeci;

    move-result-object p0

    return-object p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unsupported credential type."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
