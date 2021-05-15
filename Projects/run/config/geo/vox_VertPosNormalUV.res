<pso t="ResDGPipelineState">
	<m_vs source="assets/vox.vsh" />
	<m_ps source="assets/vox.psh" />
	<m_namedBuffers>
		<i>
			<m_name v="VoxConstants"/>
			<m_buffer creator="ResDGBufferCreator">
				<size v="64" />
				<desc v="VoxConstants" />
			</m_buffer>
		</i>
	</m_namedBuffers>
</pso>
