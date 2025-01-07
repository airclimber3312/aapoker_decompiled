.class final Lcom/google/firebase/storage/zzaa;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzowr:Lcom/google/firebase/storage/zzx;

.field private synthetic zzows:Lcom/google/firebase/storage/StorageTask$ProvideError;

.field private synthetic zzowt:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/google/firebase/storage/zzx;Ljava/lang/Object;Lcom/google/firebase/storage/StorageTask$ProvideError;)V
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/storage/zzaa;->zzowr:Lcom/google/firebase/storage/zzx;

    iput-object p2, p0, Lcom/google/firebase/storage/zzaa;->zzowt:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/firebase/storage/zzaa;->zzows:Lcom/google/firebase/storage/StorageTask$ProvideError;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/firebase/storage/zzaa;->zzowr:Lcom/google/firebase/storage/zzx;

    invoke-static {v0}, Lcom/google/firebase/storage/zzx;->zza(Lcom/google/firebase/storage/zzx;)Lcom/google/firebase/storage/zzab;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/storage/zzaa;->zzowt:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/firebase/storage/zzaa;->zzows:Lcom/google/firebase/storage/StorageTask$ProvideError;

    invoke-interface {v0, v1, v2}, Lcom/google/firebase/storage/zzab;->zzi(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
