.class final Lcom/google/firebase/storage/zzy;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzowq:Ljava/lang/Object;

.field private synthetic zzowr:Lcom/google/firebase/storage/zzx;


# direct methods
.method constructor <init>(Lcom/google/firebase/storage/zzx;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/storage/zzy;->zzowr:Lcom/google/firebase/storage/zzx;

    iput-object p2, p0, Lcom/google/firebase/storage/zzy;->zzowq:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/storage/zzy;->zzowr:Lcom/google/firebase/storage/zzx;

    iget-object v1, p0, Lcom/google/firebase/storage/zzy;->zzowq:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/google/firebase/storage/zzx;->zzcp(Ljava/lang/Object;)V

    return-void
.end method
