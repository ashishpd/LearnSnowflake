# Images Directory

This directory contains draw.io diagrams for the Snowflake learning materials.

## Available Diagrams

The following diagrams are available in both `.drawio` (editable) and `.png` (rendered) formats:

1. **snowflake-3-layer-architecture** - Three-layer architecture (Cloud Services, Compute, Storage)
2. **virtual-warehouse-architecture** - Multi-cluster warehouse architecture
3. **data-loading-flow** - Data loading process flow (COPY INTO and Snowpipe)
4. **data-sharing-architecture** - Provider and consumer data sharing model
5. **security-layers** - Security layers (Network, Authentication, Authorization, Data Protection)
6. **time-travel-cloning** - Time Travel lifecycle and Zero-Copy Cloning
7. **streams-tasks-flow** - Streams and Tasks integration for automation

**Note**: PNG files have been generated and are ready to use. The `.drawio` files are available for editing.

## How to Use

### Opening in Draw.io

1. Go to [diagrams.net](https://app.diagrams.net/) (formerly draw.io)
2. Click "Open Existing Diagram"
3. Select the `.drawio` file from this directory
4. Edit as needed
5. Export as PNG, SVG, or PDF

### Exporting Images

1. Open the diagram in draw.io
2. Go to File → Export as → PNG (or SVG/PDF)
3. Save to this directory with the same name but `.png` extension
4. Update markdown files to reference the exported image

### Integration in Markdown

Reference diagrams in markdown files using:
```markdown
![Diagram Description](images/filename.drawio)
```

Or after exporting to PNG:
```markdown
![Diagram Description](images/filename.png)
```

## Editing Diagrams

- All diagrams are in XML format (draw.io native format)
- Can be opened and edited in any draw.io compatible tool
- Diagrams are already integrated into the markdown files
- Feel free to customize colors, layouts, and add more details

