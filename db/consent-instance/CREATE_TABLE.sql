CREATE TABLE
    IF NOT EXISTS consent_instance (
        id varchar(255) NOT NULL,
        created_on timestamptz NOT NULL,
        updated_on timestamptz NOT NULL,
        created_by varchar(255) NOT NULL,
        updated_by varchar(255) NOT NULL,
        "version" int8 NULL,
        status varchar(255) NULL,
        owning_entity_id varchar(255) NOT NULL,
        owning_entity_type varchar(255) NOT NULL,
        purpose varchar(255) NULL,
        expires_on timestamptz NULL,
        value VARCHAR(255) NOT NULL,
        frequency varchar(255) NULL,
        frequency_start timestamptz NULL,
        frequency_end timestamptz NULL,
        instance_count integer NULL,
        max_instance_count integer NULL,
        expiry_period varchar(255) NULL,
        revision BIGINT NOT NULL,
        context_details jsonb NULL,
        extension_fields jsonb NULL,
        elements jsonb,
        consent_status varchar(255),
        transaction_time timestamptz,
        CONSTRAINT PK_CONSENT_INSTANCE PRIMARY KEY (
            (owning_entity_id, owning_entity_type),
            id,
            transaction_time
        )
    );