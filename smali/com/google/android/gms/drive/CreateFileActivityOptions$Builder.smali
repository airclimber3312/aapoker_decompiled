.class public Lcom/google/android/gms/drive/CreateFileActivityOptions$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/drive/CreateFileActivityOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field protected final builder:Lcom/google/android/gms/drive/CreateFileActivityBuilder;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/drive/CreateFileActivityBuilder;

    invoke-direct {v0}, Lcom/google/android/gms/drive/CreateFileActivityBuilder;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/drive/CreateFileActivityOptions$Builder;->builder:Lcom/google/android/gms/drive/CreateFileActivityBuilder;

    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/gms/drive/CreateFileActivityOptions;
    .locals 8

    iget-object v0, p0, Lcom/google/android/gms/drive/CreateFileActivityOptions$Builder;->builder:Lcom/google/android/gms/drive/CreateFileActivityBuilder;

    invoke-virtual {v0}, Lcom/google/android/gms/drive/CreateFileActivityBuilder;->zzapi()V

    new-instance v0, Lcom/google/android/gms/drive/CreateFileActivityOptions;

    iget-object v1, p0, Lcom/google/android/gms/drive/CreateFileActivityOptions$Builder;->builder:Lcom/google/android/gms/drive/CreateFileActivityBuilder;

    invoke-virtual {v1}, Lcom/google/android/gms/drive/CreateFileActivityBuilder;->zzape()Lcom/google/android/gms/drive/MetadataChangeSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/drive/MetadataChangeSet;->zzapv()Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    move-result-object v2

    iget-object v1, p0, Lcom/google/android/gms/drive/CreateFileActivityOptions$Builder;->builder:Lcom/google/android/gms/drive/CreateFileActivityBuilder;

    invoke-virtual {v1}, Lcom/google/android/gms/drive/CreateFileActivityBuilder;->getRequestId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v1, p0, Lcom/google/android/gms/drive/CreateFileActivityOptions$Builder;->builder:Lcom/google/android/gms/drive/CreateFileActivityBuilder;

    invoke-virtual {v1}, Lcom/google/android/gms/drive/CreateFileActivityBuilder;->zzapg()Ljava/lang/String;

    move-result-object v4

    iget-object v1, p0, Lcom/google/android/gms/drive/CreateFileActivityOptions$Builder;->builder:Lcom/google/android/gms/drive/CreateFileActivityBuilder;

    invoke-virtual {v1}, Lcom/google/android/gms/drive/CreateFileActivityBuilder;->zzapf()Lcom/google/android/gms/drive/DriveId;

    move-result-object v5

    iget-object v1, p0, Lcom/google/android/gms/drive/CreateFileActivityOptions$Builder;->builder:Lcom/google/android/gms/drive/CreateFileActivityBuilder;

    invoke-virtual {v1}, Lcom/google/android/gms/drive/CreateFileActivityBuilder;->zzaph()I

    move-result v6

    const/4 v7, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/drive/CreateFileActivityOptions;-><init>(Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;Ljava/lang/Integer;Ljava/lang/String;Lcom/google/android/gms/drive/DriveId;ILcom/google/android/gms/drive/zze;)V

    return-object v0
.end method

.method public setActivityStartFolder(Lcom/google/android/gms/drive/DriveId;)Lcom/google/android/gms/drive/CreateFileActivityOptions$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/drive/CreateFileActivityOptions$Builder;->builder:Lcom/google/android/gms/drive/CreateFileActivityBuilder;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/drive/CreateFileActivityBuilder;->setActivityStartFolder(Lcom/google/android/gms/drive/DriveId;)Lcom/google/android/gms/drive/CreateFileActivityBuilder;

    return-object p0
.end method

.method public setActivityTitle(Ljava/lang/String;)Lcom/google/android/gms/drive/CreateFileActivityOptions$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/drive/CreateFileActivityOptions$Builder;->builder:Lcom/google/android/gms/drive/CreateFileActivityBuilder;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/drive/CreateFileActivityBuilder;->setActivityTitle(Ljava/lang/String;)Lcom/google/android/gms/drive/CreateFileActivityBuilder;

    return-object p0
.end method

.method public setInitialDriveContents(Lcom/google/android/gms/drive/DriveContents;)Lcom/google/android/gms/drive/CreateFileActivityOptions$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/drive/CreateFileActivityOptions$Builder;->builder:Lcom/google/android/gms/drive/CreateFileActivityBuilder;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/drive/CreateFileActivityBuilder;->setInitialDriveContents(Lcom/google/android/gms/drive/DriveContents;)Lcom/google/android/gms/drive/CreateFileActivityBuilder;

    return-object p0
.end method

.method public setInitialMetadata(Lcom/google/android/gms/drive/MetadataChangeSet;)Lcom/google/android/gms/drive/CreateFileActivityOptions$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/drive/CreateFileActivityOptions$Builder;->builder:Lcom/google/android/gms/drive/CreateFileActivityBuilder;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/drive/CreateFileActivityBuilder;->setInitialMetadata(Lcom/google/android/gms/drive/MetadataChangeSet;)Lcom/google/android/gms/drive/CreateFileActivityBuilder;

    return-object p0
.end method
