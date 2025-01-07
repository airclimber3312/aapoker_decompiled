.class final Lcom/google/firebase/storage/StorageMetadata$zza;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/storage/StorageMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final zzouw:Z


# direct methods
.method private constructor <init>(Ljava/lang/Object;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Lcom/google/firebase/storage/StorageMetadata$zza;->zzouw:Z

    iput-object p1, p0, Lcom/google/firebase/storage/StorageMetadata$zza;->value:Ljava/lang/Object;

    return-void
.end method

.method static zzcn(Ljava/lang/Object;)Lcom/google/firebase/storage/StorageMetadata$zza;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/google/firebase/storage/StorageMetadata$zza<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/firebase/storage/StorageMetadata$zza;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/firebase/storage/StorageMetadata$zza;-><init>(Ljava/lang/Object;Z)V

    return-object v0
.end method

.method static zzco(Ljava/lang/Object;)Lcom/google/firebase/storage/StorageMetadata$zza;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/google/firebase/storage/StorageMetadata$zza<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/firebase/storage/StorageMetadata$zza;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/google/firebase/storage/StorageMetadata$zza;-><init>(Ljava/lang/Object;Z)V

    return-object v0
.end method


# virtual methods
.method final getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/storage/StorageMetadata$zza;->value:Ljava/lang/Object;

    return-object v0
.end method

.method final zzcnv()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/firebase/storage/StorageMetadata$zza;->zzouw:Z

    return v0
.end method
