.class public Lcom/google/firebase/database/DatabaseReference;
.super Lcom/google/firebase/database/Query;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/database/DatabaseReference$CompletionListener;
    }
.end annotation


# static fields
.field private static zzmwg:Lcom/google/android/gms/internal/zzegp;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzegx;Lcom/google/android/gms/internal/zzegu;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/firebase/database/Query;-><init>(Lcom/google/android/gms/internal/zzegx;Lcom/google/android/gms/internal/zzegu;)V

    return-void
.end method

.method public static goOffline()V
    .locals 1

    invoke-static {}, Lcom/google/firebase/database/DatabaseReference;->zzbvc()Lcom/google/android/gms/internal/zzegp;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzeib;->zzd(Lcom/google/android/gms/internal/zzegm;)V

    return-void
.end method

.method public static goOnline()V
    .locals 1

    invoke-static {}, Lcom/google/firebase/database/DatabaseReference;->zzbvc()Lcom/google/android/gms/internal/zzegp;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzeib;->zze(Lcom/google/android/gms/internal/zzegm;)V

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/zzenn;Lcom/google/firebase/database/DatabaseReference$CompletionListener;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzenn;",
            "Lcom/google/firebase/database/DatabaseReference$CompletionListener;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/database/Query;->zzmxa:Lcom/google/android/gms/internal/zzegu;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzepf;->zzao(Lcom/google/android/gms/internal/zzegu;)V

    invoke-static {p2}, Lcom/google/android/gms/internal/zzepd;->zzb(Lcom/google/firebase/database/DatabaseReference$CompletionListener;)Lcom/google/android/gms/internal/zzepa;

    move-result-object p2

    iget-object v0, p0, Lcom/google/firebase/database/DatabaseReference;->zzmwt:Lcom/google/android/gms/internal/zzegx;

    new-instance v1, Lcom/google/firebase/database/zzd;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/firebase/database/zzd;-><init>(Lcom/google/firebase/database/DatabaseReference;Lcom/google/android/gms/internal/zzenn;Lcom/google/android/gms/internal/zzepa;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzegx;->zzp(Ljava/lang/Runnable;)V

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzepa;->getFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/tasks/Task;

    return-object p1
.end method

.method private final zza(Ljava/lang/Object;Lcom/google/android/gms/internal/zzenn;Lcom/google/firebase/database/DatabaseReference$CompletionListener;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/google/android/gms/internal/zzenn;",
            "Lcom/google/firebase/database/DatabaseReference$CompletionListener;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/database/Query;->zzmxa:Lcom/google/android/gms/internal/zzegu;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzepf;->zzao(Lcom/google/android/gms/internal/zzegu;)V

    iget-object v0, p0, Lcom/google/firebase/database/Query;->zzmxa:Lcom/google/android/gms/internal/zzegu;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/zzejo;->zza(Lcom/google/android/gms/internal/zzegu;Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/google/android/gms/internal/zzepg;->zzca(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/zzepf;->zzbz(Ljava/lang/Object;)V

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/zzenq;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/zzenn;)Lcom/google/android/gms/internal/zzenn;

    move-result-object p1

    invoke-static {p3}, Lcom/google/android/gms/internal/zzepd;->zzb(Lcom/google/firebase/database/DatabaseReference$CompletionListener;)Lcom/google/android/gms/internal/zzepa;

    move-result-object p2

    iget-object p3, p0, Lcom/google/firebase/database/DatabaseReference;->zzmwt:Lcom/google/android/gms/internal/zzegx;

    new-instance v0, Lcom/google/firebase/database/zzc;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/firebase/database/zzc;-><init>(Lcom/google/firebase/database/DatabaseReference;Lcom/google/android/gms/internal/zzenn;Lcom/google/android/gms/internal/zzepa;)V

    invoke-virtual {p3, v0}, Lcom/google/android/gms/internal/zzegx;->zzp(Ljava/lang/Runnable;)V

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzepa;->getFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/tasks/Task;

    return-object p1
.end method

.method private final zza(Ljava/util/Map;Lcom/google/firebase/database/DatabaseReference$CompletionListener;)Lcom/google/android/gms/tasks/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/google/firebase/database/DatabaseReference$CompletionListener;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/google/android/gms/internal/zzepg;->zzap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iget-object v0, p0, Lcom/google/firebase/database/Query;->zzmxa:Lcom/google/android/gms/internal/zzegu;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/zzepf;->zzb(Lcom/google/android/gms/internal/zzegu;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzegi;->zzan(Ljava/util/Map;)Lcom/google/android/gms/internal/zzegi;

    move-result-object v0

    invoke-static {p2}, Lcom/google/android/gms/internal/zzepd;->zzb(Lcom/google/firebase/database/DatabaseReference$CompletionListener;)Lcom/google/android/gms/internal/zzepa;

    move-result-object p2

    iget-object v1, p0, Lcom/google/firebase/database/DatabaseReference;->zzmwt:Lcom/google/android/gms/internal/zzegx;

    new-instance v2, Lcom/google/firebase/database/zze;

    invoke-direct {v2, p0, v0, p2, p1}, Lcom/google/firebase/database/zze;-><init>(Lcom/google/firebase/database/DatabaseReference;Lcom/google/android/gms/internal/zzegi;Lcom/google/android/gms/internal/zzepa;Ljava/util/Map;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzegx;->zzp(Ljava/lang/Runnable;)V

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzepa;->getFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/tasks/Task;

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Can\'t pass null for argument \'update\' in updateChildren()"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static declared-synchronized zzbvc()Lcom/google/android/gms/internal/zzegp;
    .locals 2

    const-class v0, Lcom/google/firebase/database/DatabaseReference;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/firebase/database/DatabaseReference;->zzmwg:Lcom/google/android/gms/internal/zzegp;

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/zzegp;

    invoke-direct {v1}, Lcom/google/android/gms/internal/zzegp;-><init>()V

    sput-object v1, Lcom/google/firebase/database/DatabaseReference;->zzmwg:Lcom/google/android/gms/internal/zzegp;

    :cond_0
    sget-object v1, Lcom/google/firebase/database/DatabaseReference;->zzmwg:Lcom/google/android/gms/internal/zzegp;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public child(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;
    .locals 2

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/google/firebase/database/Query;->zzmxa:Lcom/google/android/gms/internal/zzegu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzegu;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/google/android/gms/internal/zzepf;->zzqo(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/internal/zzepf;->zzqn(Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/google/firebase/database/Query;->zzmxa:Lcom/google/android/gms/internal/zzegu;

    new-instance v1, Lcom/google/android/gms/internal/zzegu;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/zzegu;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzegu;->zzh(Lcom/google/android/gms/internal/zzegu;)Lcom/google/android/gms/internal/zzegu;

    move-result-object p1

    new-instance v0, Lcom/google/firebase/database/DatabaseReference;

    iget-object v1, p0, Lcom/google/firebase/database/DatabaseReference;->zzmwt:Lcom/google/android/gms/internal/zzegx;

    invoke-direct {v0, v1, p1}, Lcom/google/firebase/database/DatabaseReference;-><init>(Lcom/google/android/gms/internal/zzegx;Lcom/google/android/gms/internal/zzegu;)V

    return-object v0

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Can\'t pass null for argument \'pathString\' in child()"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lcom/google/firebase/database/DatabaseReference;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/firebase/database/DatabaseReference;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getDatabase()Lcom/google/firebase/database/FirebaseDatabase;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/database/DatabaseReference;->zzmwt:Lcom/google/android/gms/internal/zzegx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzegx;->getDatabase()Lcom/google/firebase/database/FirebaseDatabase;

    move-result-object v0

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/database/Query;->zzmxa:Lcom/google/android/gms/internal/zzegu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzegu;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/firebase/database/Query;->zzmxa:Lcom/google/android/gms/internal/zzegu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzegu;->zzbyt()Lcom/google/android/gms/internal/zzemq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzemq;->asString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParent()Lcom/google/firebase/database/DatabaseReference;
    .locals 3

    iget-object v0, p0, Lcom/google/firebase/database/Query;->zzmxa:Lcom/google/android/gms/internal/zzegu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzegu;->zzbys()Lcom/google/android/gms/internal/zzegu;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/google/firebase/database/DatabaseReference;

    iget-object v2, p0, Lcom/google/firebase/database/DatabaseReference;->zzmwt:Lcom/google/android/gms/internal/zzegx;

    invoke-direct {v1, v2, v0}, Lcom/google/firebase/database/DatabaseReference;-><init>(Lcom/google/android/gms/internal/zzegx;Lcom/google/android/gms/internal/zzegu;)V

    return-object v1

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRoot()Lcom/google/firebase/database/DatabaseReference;
    .locals 4

    new-instance v0, Lcom/google/firebase/database/DatabaseReference;

    iget-object v1, p0, Lcom/google/firebase/database/DatabaseReference;->zzmwt:Lcom/google/android/gms/internal/zzegx;

    new-instance v2, Lcom/google/android/gms/internal/zzegu;

    const-string v3, ""

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/zzegu;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1, v2}, Lcom/google/firebase/database/DatabaseReference;-><init>(Lcom/google/android/gms/internal/zzegx;Lcom/google/android/gms/internal/zzegu;)V

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    invoke-virtual {p0}, Lcom/google/firebase/database/DatabaseReference;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public onDisconnect()Lcom/google/firebase/database/OnDisconnect;
    .locals 3

    iget-object v0, p0, Lcom/google/firebase/database/Query;->zzmxa:Lcom/google/android/gms/internal/zzegu;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzepf;->zzao(Lcom/google/android/gms/internal/zzegu;)V

    new-instance v0, Lcom/google/firebase/database/OnDisconnect;

    iget-object v1, p0, Lcom/google/firebase/database/DatabaseReference;->zzmwt:Lcom/google/android/gms/internal/zzegx;

    iget-object v2, p0, Lcom/google/firebase/database/Query;->zzmxa:Lcom/google/android/gms/internal/zzegu;

    invoke-direct {v0, v1, v2}, Lcom/google/firebase/database/OnDisconnect;-><init>(Lcom/google/android/gms/internal/zzegx;Lcom/google/android/gms/internal/zzegu;)V

    return-object v0
.end method

.method public push()Lcom/google/firebase/database/DatabaseReference;
    .locals 4

    iget-object v0, p0, Lcom/google/firebase/database/DatabaseReference;->zzmwt:Lcom/google/android/gms/internal/zzegx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzegx;->zzbyw()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzepc;->zzca(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzemq;->zzqf(Ljava/lang/String;)Lcom/google/android/gms/internal/zzemq;

    move-result-object v0

    new-instance v1, Lcom/google/firebase/database/DatabaseReference;

    iget-object v2, p0, Lcom/google/firebase/database/DatabaseReference;->zzmwt:Lcom/google/android/gms/internal/zzegx;

    iget-object v3, p0, Lcom/google/firebase/database/Query;->zzmxa:Lcom/google/android/gms/internal/zzegu;

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/zzegu;->zza(Lcom/google/android/gms/internal/zzemq;)Lcom/google/android/gms/internal/zzegu;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/google/firebase/database/DatabaseReference;-><init>(Lcom/google/android/gms/internal/zzegx;Lcom/google/android/gms/internal/zzegu;)V

    return-object v1
.end method

.method public removeValue()Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/firebase/database/DatabaseReference;->setValue(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public removeValue(Lcom/google/firebase/database/DatabaseReference$CompletionListener;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/google/firebase/database/DatabaseReference;->setValue(Ljava/lang/Object;Lcom/google/firebase/database/DatabaseReference$CompletionListener;)V

    return-void
.end method

.method public runTransaction(Lcom/google/firebase/database/Transaction$Handler;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/firebase/database/DatabaseReference;->runTransaction(Lcom/google/firebase/database/Transaction$Handler;Z)V

    return-void
.end method

.method public runTransaction(Lcom/google/firebase/database/Transaction$Handler;Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/firebase/database/Query;->zzmxa:Lcom/google/android/gms/internal/zzegu;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzepf;->zzao(Lcom/google/android/gms/internal/zzegu;)V

    iget-object v0, p0, Lcom/google/firebase/database/DatabaseReference;->zzmwt:Lcom/google/android/gms/internal/zzegx;

    new-instance v1, Lcom/google/firebase/database/zzf;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/firebase/database/zzf;-><init>(Lcom/google/firebase/database/DatabaseReference;Lcom/google/firebase/database/Transaction$Handler;Z)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzegx;->zzp(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Can\'t pass null for argument \'handler\' in runTransaction()"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setPriority(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/database/DatabaseReference;->zzmxa:Lcom/google/android/gms/internal/zzegu;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/zzent;->zzc(Lcom/google/android/gms/internal/zzegu;Ljava/lang/Object;)Lcom/google/android/gms/internal/zzenn;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/firebase/database/DatabaseReference;->zza(Lcom/google/android/gms/internal/zzenn;Lcom/google/firebase/database/DatabaseReference$CompletionListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public setPriority(Ljava/lang/Object;Lcom/google/firebase/database/DatabaseReference$CompletionListener;)V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/database/DatabaseReference;->zzmxa:Lcom/google/android/gms/internal/zzegu;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/zzent;->zzc(Lcom/google/android/gms/internal/zzegu;Ljava/lang/Object;)Lcom/google/android/gms/internal/zzenn;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/google/firebase/database/DatabaseReference;->zza(Lcom/google/android/gms/internal/zzenn;Lcom/google/firebase/database/DatabaseReference$CompletionListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public setValue(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/database/DatabaseReference;->zzmxa:Lcom/google/android/gms/internal/zzegu;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzent;->zzc(Lcom/google/android/gms/internal/zzegu;Ljava/lang/Object;)Lcom/google/android/gms/internal/zzenn;

    move-result-object v0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/firebase/database/DatabaseReference;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/zzenn;Lcom/google/firebase/database/DatabaseReference$CompletionListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public setValue(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/database/DatabaseReference;->zzmxa:Lcom/google/android/gms/internal/zzegu;

    invoke-static {v0, p2}, Lcom/google/android/gms/internal/zzent;->zzc(Lcom/google/android/gms/internal/zzegu;Ljava/lang/Object;)Lcom/google/android/gms/internal/zzenn;

    move-result-object p2

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/firebase/database/DatabaseReference;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/zzenn;Lcom/google/firebase/database/DatabaseReference$CompletionListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public setValue(Ljava/lang/Object;Lcom/google/firebase/database/DatabaseReference$CompletionListener;)V
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/database/DatabaseReference;->zzmxa:Lcom/google/android/gms/internal/zzegu;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzent;->zzc(Lcom/google/android/gms/internal/zzegu;Ljava/lang/Object;)Lcom/google/android/gms/internal/zzenn;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lcom/google/firebase/database/DatabaseReference;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/zzenn;Lcom/google/firebase/database/DatabaseReference$CompletionListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public setValue(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/firebase/database/DatabaseReference$CompletionListener;)V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/database/DatabaseReference;->zzmxa:Lcom/google/android/gms/internal/zzegu;

    invoke-static {v0, p2}, Lcom/google/android/gms/internal/zzent;->zzc(Lcom/google/android/gms/internal/zzegu;Ljava/lang/Object;)Lcom/google/android/gms/internal/zzenn;

    move-result-object p2

    invoke-direct {p0, p1, p2, p3}, Lcom/google/firebase/database/DatabaseReference;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/zzenn;Lcom/google/firebase/database/DatabaseReference$CompletionListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Lcom/google/firebase/database/DatabaseReference;->getParent()Lcom/google/firebase/database/DatabaseReference;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/firebase/database/DatabaseReference;->zzmwt:Lcom/google/android/gms/internal/zzegx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzegx;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    :try_start_0
    invoke-virtual {v0}, Lcom/google/firebase/database/DatabaseReference;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/firebase/database/DatabaseReference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-static {v1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "+"

    const-string v3, "%20"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/firebase/database/DatabaseException;

    invoke-virtual {p0}, Lcom/google/firebase/database/DatabaseReference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const-string v4, "Failed to URLEncode key: "

    if-eqz v3, :cond_1

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-direct {v1, v2, v0}, Lcom/google/firebase/database/DatabaseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public updateChildren(Ljava/util/Map;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/firebase/database/DatabaseReference;->zza(Ljava/util/Map;Lcom/google/firebase/database/DatabaseReference$CompletionListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public updateChildren(Ljava/util/Map;Lcom/google/firebase/database/DatabaseReference$CompletionListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/google/firebase/database/DatabaseReference$CompletionListener;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/google/firebase/database/DatabaseReference;->zza(Ljava/util/Map;Lcom/google/firebase/database/DatabaseReference$CompletionListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method
