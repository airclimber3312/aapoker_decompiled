.class public final Lcom/google/android/gms/drive/MetadataChangeSet;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/drive/MetadataChangeSet$Builder;
    }
.end annotation


# static fields
.field public static final CUSTOM_PROPERTY_SIZE_LIMIT_BYTES:I = 0x7c

.field public static final INDEXABLE_TEXT_SIZE_LIMIT_BYTES:I = 0x20000

.field public static final MAX_PRIVATE_PROPERTIES_PER_RESOURCE_PER_APP:I = 0x1e

.field public static final MAX_PUBLIC_PROPERTIES_PER_RESOURCE:I = 0x1e

.field public static final MAX_TOTAL_PROPERTIES_PER_RESOURCE:I = 0x64

.field public static final zzgqo:Lcom/google/android/gms/drive/MetadataChangeSet;


# instance fields
.field private final zzgqp:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/drive/MetadataChangeSet;

    invoke-static {}, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;->zzaqz()Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/drive/MetadataChangeSet;-><init>(Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;)V

    sput-object v0, Lcom/google/android/gms/drive/MetadataChangeSet;->zzgqo:Lcom/google/android/gms/drive/MetadataChangeSet;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;->zzara()Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/drive/MetadataChangeSet;->zzgqp:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    return-void
.end method


# virtual methods
.method public final getCustomPropertyChangeMap()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/google/android/gms/drive/metadata/CustomPropertyKey;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/drive/MetadataChangeSet;->zzgqp:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    sget-object v1, Lcom/google/android/gms/internal/zzbuj;->zzgyz:Lcom/google/android/gms/internal/zzbum;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;->zza(Lcom/google/android/gms/drive/metadata/MetadataField;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/drive/metadata/internal/AppVisibleCustomProperties;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/drive/metadata/internal/AppVisibleCustomProperties;->zzaqv()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final getDescription()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/drive/MetadataChangeSet;->zzgqp:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    sget-object v1, Lcom/google/android/gms/internal/zzbuj;->zzgza:Lcom/google/android/gms/drive/metadata/MetadataField;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;->zza(Lcom/google/android/gms/drive/metadata/MetadataField;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getIndexableText()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/drive/MetadataChangeSet;->zzgqp:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    sget-object v1, Lcom/google/android/gms/internal/zzbuj;->zzgzg:Lcom/google/android/gms/drive/metadata/MetadataField;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;->zza(Lcom/google/android/gms/drive/metadata/MetadataField;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getLastViewedByMeDate()Ljava/util/Date;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/drive/MetadataChangeSet;->zzgqp:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    sget-object v1, Lcom/google/android/gms/internal/zzbuw;->zzhaq:Lcom/google/android/gms/internal/zzbuy;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;->zza(Lcom/google/android/gms/drive/metadata/MetadataField;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    return-object v0
.end method

.method public final getMimeType()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/drive/MetadataChangeSet;->zzgqp:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    sget-object v1, Lcom/google/android/gms/internal/zzbuj;->zzgzu:Lcom/google/android/gms/internal/zzbuo;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;->zza(Lcom/google/android/gms/drive/metadata/MetadataField;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/drive/MetadataChangeSet;->zzgqp:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    sget-object v1, Lcom/google/android/gms/internal/zzbuj;->zzhad:Lcom/google/android/gms/internal/zzbus;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;->zza(Lcom/google/android/gms/drive/metadata/MetadataField;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final isPinned()Ljava/lang/Boolean;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/drive/MetadataChangeSet;->zzgqp:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    sget-object v1, Lcom/google/android/gms/internal/zzbuj;->zzgzm:Lcom/google/android/gms/internal/zzbun;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;->zza(Lcom/google/android/gms/drive/metadata/MetadataField;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0
.end method

.method public final isStarred()Ljava/lang/Boolean;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/drive/MetadataChangeSet;->zzgqp:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    sget-object v1, Lcom/google/android/gms/internal/zzbuj;->zzhab:Lcom/google/android/gms/internal/zzbur;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;->zza(Lcom/google/android/gms/drive/metadata/MetadataField;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0
.end method

.method public final isViewed()Ljava/lang/Boolean;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/drive/MetadataChangeSet;->zzgqp:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    sget-object v1, Lcom/google/android/gms/internal/zzbuj;->zzgzt:Lcom/google/android/gms/drive/metadata/MetadataField;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;->zza(Lcom/google/android/gms/drive/metadata/MetadataField;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0
.end method

.method public final zza(Lcom/google/android/gms/drive/metadata/MetadataField;Ljava/lang/Object;)Lcom/google/android/gms/drive/MetadataChangeSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/drive/metadata/MetadataField<",
            "TT;>;TT;)",
            "Lcom/google/android/gms/drive/MetadataChangeSet;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/drive/MetadataChangeSet;

    iget-object v1, p0, Lcom/google/android/gms/drive/MetadataChangeSet;->zzgqp:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    invoke-direct {v0, v1}, Lcom/google/android/gms/drive/MetadataChangeSet;-><init>(Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;)V

    iget-object v1, v0, Lcom/google/android/gms/drive/MetadataChangeSet;->zzgqp:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    invoke-virtual {v1, p1, p2}, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;->zzc(Lcom/google/android/gms/drive/metadata/MetadataField;Ljava/lang/Object;)V

    return-object v0
.end method

.method public final zzapv()Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/drive/MetadataChangeSet;->zzgqp:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    return-object v0
.end method
