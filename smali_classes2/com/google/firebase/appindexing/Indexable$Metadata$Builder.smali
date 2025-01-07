.class public final Lcom/google/firebase/appindexing/Indexable$Metadata$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/appindexing/Indexable$Metadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# static fields
.field private static final zzmnw:Lcom/google/android/gms/internal/zzfml;


# instance fields
.field private score:I

.field private final zzegs:Landroid/os/Bundle;

.field private zzmnx:Z

.field private zzmny:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzfml;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzfml;-><init>()V

    sput-object v0, Lcom/google/firebase/appindexing/Indexable$Metadata$Builder;->zzmnw:Lcom/google/android/gms/internal/zzfml;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/google/firebase/appindexing/Indexable$Metadata$Builder;->zzmnw:Lcom/google/android/gms/internal/zzfml;

    iget-boolean v1, v0, Lcom/google/android/gms/internal/zzfml;->zzmnx:Z

    iput-boolean v1, p0, Lcom/google/firebase/appindexing/Indexable$Metadata$Builder;->zzmnx:Z

    iget v1, v0, Lcom/google/android/gms/internal/zzfml;->score:I

    iput v1, p0, Lcom/google/firebase/appindexing/Indexable$Metadata$Builder;->score:I

    iget-object v0, v0, Lcom/google/android/gms/internal/zzfml;->zzmny:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/firebase/appindexing/Indexable$Metadata$Builder;->zzmny:Ljava/lang/String;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/appindexing/Indexable$Metadata$Builder;->zzegs:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final setScope(I)Lcom/google/firebase/appindexing/Indexable$Metadata$Builder;
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lez p1, :cond_0

    const/4 v2, 0x3

    if-gt p1, v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x45

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "The scope of this indexable is not valid, scope value is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzbq;->checkArgument(ZLjava/lang/Object;)V

    new-array v0, v0, [J

    int-to-long v2, p1

    aput-wide v2, v0, v1

    iget-object p1, p0, Lcom/google/firebase/appindexing/Indexable$Metadata$Builder;->zzegs:Landroid/os/Bundle;

    const-string v1, "scope"

    invoke-static {p1, v1, v0}, Lcom/google/firebase/appindexing/builders/IndexableBuilder;->zza(Landroid/os/Bundle;Ljava/lang/String;[J)V

    return-object p0
.end method

.method public final setScore(I)Lcom/google/firebase/appindexing/Indexable$Metadata$Builder;
    .locals 3

    if-ltz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x35

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Negative score values are invalid. Value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzbq;->checkArgument(ZLjava/lang/Object;)V

    iput p1, p0, Lcom/google/firebase/appindexing/Indexable$Metadata$Builder;->score:I

    return-object p0
.end method

.method public final setWorksOffline(Z)Lcom/google/firebase/appindexing/Indexable$Metadata$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/google/firebase/appindexing/Indexable$Metadata$Builder;->zzmnx:Z

    return-object p0
.end method

.method public final zzbte()Lcom/google/firebase/appindexing/internal/Thing$zza;
    .locals 5

    new-instance v0, Lcom/google/firebase/appindexing/internal/Thing$zza;

    iget-boolean v1, p0, Lcom/google/firebase/appindexing/Indexable$Metadata$Builder;->zzmnx:Z

    iget v2, p0, Lcom/google/firebase/appindexing/Indexable$Metadata$Builder;->score:I

    iget-object v3, p0, Lcom/google/firebase/appindexing/Indexable$Metadata$Builder;->zzmny:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/firebase/appindexing/Indexable$Metadata$Builder;->zzegs:Landroid/os/Bundle;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/firebase/appindexing/internal/Thing$zza;-><init>(ZILjava/lang/String;Landroid/os/Bundle;)V

    return-object v0
.end method
